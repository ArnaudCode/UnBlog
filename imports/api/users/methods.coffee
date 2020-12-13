# METEOR PACKAGES
import { Accounts } from 'meteor/accounts-base'
import { check } from 'meteor/check'
import { Meteor } from 'meteor/meteor'

# COLLECTIONS
import { Users } from './users'

Meteor.methods
  # ACCOUNT
  'user.delete.account': ->
    Users.remove { _id: @userId }
  'user.password.check': (password) ->
    check password, String
    if @userId
      user = Meteor.user()
      Accounts._checkPassword user, password
  'user.password.update.strength': (passwordStrength) ->
    check passwordStrength, String
    Users.update { _id: @userId }, {
      $set: { 'services.password.strength': passwordStrength }
    }
  # EMAILS
  'user.emails.set-primary-address': (email) ->
    check email, String
    Users.update(
      { _id: @userId, 'emails.isPrimary': yes }
      { $set: { 'emails.$.isPrimary': no }}
    )
    Users.update(
      { _id: @userId, 'emails.address': email }
      { $set: { 'emails.$.isPrimary': yes }}
    )
  'user.emails.resend-verification-email': (email) ->
    check email, String
    Accounts.sendVerificationEmail @userId, email
  'user.emails.remove': (email) ->
    check email, String
    user = Users.findOne { _id: @userId }
    if user.emails.length > 1 then Accounts.removeEmail @userId, email
    else throw new Meteor.Error 'not-allowed', 'cannot remove last address'
  # STATUS
  'user.read.connection': -> @connection.clientAddress
  # SETTINGS
  'user.update.language': (language) ->
    check language, String
    Users.update { _id: @userId }, { $set: { 'settings.language': language }}
  'user.update.size': (size) ->
    check size, String
    Users.update { _id: @userId }, { $set: { 'settings.size': size }}
  'user.update.energy.profile': (energyProfile) ->
    check energyProfile, String
    Users.update { _id: @userId }, {
      $set: { 'settings.energy.profile': energyProfile }
    }
  'user.update.country': (country) ->
    check country, String
    Users.update { _id: @userId }, { $set: { 'settings.country': country }}
  'user.update.theme': (theme) ->
    check theme, String
    Users.update { _id: @userId }, { $set: { 'settings.theme': theme }}
  # REVIEW
  'user.toggle.account': (userId, newStatus) ->
    check userId   , String
    check newStatus, Boolean
    Users.update userId, $set:
      account:
        active:    newStatus
        updatedAt: new Date()

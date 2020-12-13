# METEOR PACKAGES
import { Meteor } from 'meteor/meteor'

# NPM MODULES
import SimpleSchema from 'simpl-schema'

# HANDLES
Schemas = {}

# DEFINITION
Users = Meteor.users

# RESTRICTIONs
Users.allow
  insert: -> no
  update: -> no
  remove: -> no
Users.deny
  insert: -> yes
  update: -> yes
  remove: -> yes

# USER > PROFILE > COUNTRY
Schemas.UserCountry = new SimpleSchema
  name:
    type: String
  code:
    type: String
    regEx: /^[A-Z]{2}$/

# USER > PROFILE
Schemas.UserProfile = new SimpleSchema
  # REVIEW: storing such data clearly exposes to legal issues if not careful
  firstName:
    type:     String
    optional: yes
  lastName:
    type:     String
    optional: yes
  # REVIEW: should be careful as profile can be modified client-side
  # user could link to "non-community-rules-complying" type of picture
  picture:
    type:     String
    optional: yes
  birthday:
    type:     Date
    optional: yes
  gender:
    type:          String
    allowedValues: ['Male', 'Female']
    optional:      yes
  organization:
    type:     String
    optional: yes
  website:
    type:     String
    regEx:    SimpleSchema.RegEx.Url
    optional: yes
  bio:
    type:     String
    optional: yes
  languages:
    type: Array
    optional: yes
  # TODO: restrict allowedValues to defined languages list
  'languages.$':
    type: String
  country:
    type:     Schemas.UserCountry
    optional: yes

# USER > SETTINGS
# Schemas.UserSettings = new SimpleSchema
#   language:
#     type:          String
#     defaultValue:  'en'
#   geolocation:
#     type:         Boolean
#     defaultValue: yes
#   notifications:
#     type:         Boolean
#     defaultValue: yes
#   version:
#     type:         String
#     defaultValue: '1.0.0'

#  USER
Schemas.User = new SimpleSchema
  username:
    type:     String
    optional: yes
  emails:
    type:     Array
    optional: yes
  'emails.$':
    type: Object
  'emails.$.address':
    type:  String
    regEx: SimpleSchema.RegEx.Email
  'emails.$.verified':
    type: Boolean
  registered_emails:
    type:     Array
    optional: yes
  'registered_emails.$':
    type:     Object
    blackbox: yes
  createdAt:
    type: Date
  # REVIEW: not sure if should use
  profile:
    type:     Schemas.UserProfile
    optional: yes
  # store any user settings: ui language, location auto-detect, ...
  # settings:
  #   type:     Schemas.UserSettings
  #   optional: yes
  # if using any accounts-* package
  services:
    type:     Object
    optional: yes
    blackbox: yes
  # XXX alanning:roles
  roles:
    type:     Array
    optional: yes
  'roles.$':
    type: String
  # in order to avoid an 'exception in setInterval callback' from Meteor
  heartbeat:
    type:     Date
    optional: yes
  # XXX mizzao:user-status
  status:
    type: Object
    optional: yes
    blackbox: yes
  # XXX: gravatar
  md5hash:
    type: String
    optional: yes

# ATTACH SCHEMA
Users.attachSchema(Schemas.User)

# PUBLIC FIELDs
Users.publicFields =
  username: 1
  profile:  1
  settings: 1

# EXPORT
export { Users }

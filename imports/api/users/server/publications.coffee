# METEOR PACKAGES
import { Meteor } from 'meteor/meteor'

# COLLECTIONS
import { Users } from '../users'

# PRIVATE
Meteor.publish 'user.current', ->
  if @userId? then Users.find(@userId) else @ready()

# PUBLIC
# TODO: restrict view on user data
Meteor.publish 'users', -> Users.find()

# METEOR PACKAGES
import { _ } from 'meteor/underscore'
import { BlazeLayout } from 'meteor/kadira:blaze-layout'
import { FlowRouter } from 'meteor/kadira:flow-router'
import { Meteor } from 'meteor/meteor'

# LAYOUTS
import '/imports/ui/layouts/app.coffee'

# EXPOSED
import '/imports/ui/pages/home.coffee'
# import '/imports/ui/pages/about.coffee'
# import '/imports/ui/pages/terms.coffee'
# import '/imports/ui/pages/privacy.coffee'
# import '/imports/ui/pages/packages.coffee'

# LOGGED IN
# import '/imports/ui/pages/home.coffee'
# import '/imports/ui/pages/user.coffee'

# ADMIN
# xxx

# FRONT

FlowRouter.route '/',
  name: 'gate'
  action: ->
    unless Meteor.userId() and Meteor.loggingIn()
      BlazeLayout.render 'app', main: 'gate'
    else FlowRouter.go 'home'

FlowRouter.route '/home',
  name: 'home'
  action: ->
    BlazeLayout.render 'app', main: 'home'

# MISCELLANEOUS
# TODO: should rename each template with Page suffix

misc = ['about', 'terms', 'privacy']
_.each misc, (name) ->
  FlowRouter.route "/#{name}",
    name: name
    action: ->
      BlazeLayout.render 'app', { main: name }

# PACKAGES

FlowRouter.route '/packages',
  name: 'packages'
  action: ->
    BlazeLayout.render 'app', main: 'packagesPage'

packages = ['animate', 'modal', 'notify']

_.each packages, (name) ->
  FlowRouter.route "/packages/#{name}",
    name: name
    action: ->
      main = "#{name}PackagePage"
      BlazeLayout.render 'app', { main }

# NOT FOUND

FlowRouter.notFound =
  name: 'notFound'
  action: ->
    BlazeLayout.render 'app', main: 'notFound'

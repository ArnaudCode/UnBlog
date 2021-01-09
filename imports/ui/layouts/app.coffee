# METEOR PACKAGES
import { FlowRouter } from 'meteor/ostrio:flow-router-extra';
import { Meteor } from 'meteor/meteor'
import { ReactiveVar } from 'meteor/reactive-var'
import { Template } from 'meteor/templating'

# NPM MODULES
import 'normalize.css'

# HELPERS
import '../helpers/gravatar'
import '../helpers/lorem'

# TEMPLATE
import './app.jade'

# COMPONENTS
import '../components/appbar.coffee'
import '../components/navbar.coffee'

# CONNECTION TIMEOUT
CONNECTION_ISSUE_TIMEOUT = 5000
showConnectionIssue = new ReactiveVar
Meteor.startup ->
  callback = -> showConnectionIssue.set(yes)
  setTimeout(callback, CONNECTION_ISSUE_TIMEOUT)

# ONCREATED
Template.app.onRendered ->
  # global app subscriptions
  @subscribe('user.current')

# HELPERS
Template.app.helpers
  currentRouteName: -> FlowRouter.getRouteName()

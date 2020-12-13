# METEOR PACKAGES
import { Meteor } from 'meteor/meteor'
import { ReactiveVar } from 'meteor/reactive-var'
import { Template } from 'meteor/templating'

# OWN PACKAGES
# ...

# NPM MODULES
import 'normalize.css'

# HELPERS
# ...

# TEMPLATE
import './app.jade'

# COMPONENTS
# import '../components/appbar.coffee'
# import '../components/navbar.coffee'

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

# METEOR PACKAGES
import { Template } from 'meteor/templating'

# MODULES

# COMPONENTS

# TEMPLATE
import './home.jade'

# ONCREATED
Template.home.onCreated ->
  # broadcast page infos
  title  = 'Home'

# ONDESTROYED
Template.home.onDestroyed ->
  # clear page infos

# HELPERS
Template.home.helpers
  networks: -> networks

// METEOR PACKAGES
import { Meteor } from 'meteor/meteor';
import { ReactiveVar } from 'meteor/reactive-var';
import { ReactiveDict } from 'meteor/reactive-dict';
import { Template } from 'meteor/templating';

// TEMPLATE
import './body.html';

// COMPONENTS
import '../../components/navbar/navbar';

// CONNECTION TIMEOUT
const CONNECTION_ISSUE_TIMEOUT = 5000;
const showConnectionIssue = new ReactiveVar(false);
Meteor.startup(() => {
  Meteor.setTimeout(() => {
    showConnectionIssue.set(true);
  }, CONNECTION_ISSUE_TIMEOUT);
});

// ON CREATED
Template.App_Body.onCreated(function appBodyOnCreated() {
  // SUBSCRIPTIONS
  this.subscribe('posts.all');
  // STATE
  this.state = new ReactiveDict();
  this.state.setDefault({
    menuOpen: false,
    userMenuOpen: false,
  });
});

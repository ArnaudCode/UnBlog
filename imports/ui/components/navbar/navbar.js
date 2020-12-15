// METEOR PACKAGES
import { Template } from 'meteor/templating';

// PUBLICATIONS
import { Posts } from '../../../api/posts/posts';

// TEMPLATES
import './navbar.html';

// ONCREATED
Template.App_Navbar.onCreated(function appNavbarOnCreated() {
  this.autorun(() => {
    this.subscribe('posts.all');
  });
  console.log('created, posts found: ');
  console.log(Posts.find().count());
});

// ONRENDERED
Template.App_Navbar.onRendered(function appNavbarOnRendered() {
  this.autorun(() => {
    if (this.subscriptionsReady()) {
      console.log('subscription ready');
      console.log(Posts.find().count());
    }
  });
});

// HELPERS
Template.App_Navbar.helpers({
  posts() {
    return Posts.find();
  },
});

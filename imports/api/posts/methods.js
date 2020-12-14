// METEOR PACKAGES
import { Meteor } from 'meteor/meteor';
import { check } from 'meteor/check';

// COLLECTION
import { Posts } from './posts';

// METHODS
Meteor.methods({
  'posts.insert'(title) {
    check(title, String);

    return Posts.insert({
      title,
      createdAt: new Date(),
    });
  },
});

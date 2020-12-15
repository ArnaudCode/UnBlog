/* eslint-disable prefer-arrow-callback */

// METEOR PACKAGES
import { Meteor } from 'meteor/meteor';

// COLLECTION
import { Posts } from '../posts';

// PUBLICATIONS
Meteor.publish('posts.all', function postsAll() {
  return Posts.find();
});

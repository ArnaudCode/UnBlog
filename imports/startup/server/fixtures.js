// METEOR PACKAGES
import { Meteor } from 'meteor/meteor';
// import { Mongo } from 'meteor/mongo';

// COLLECTIONS
import { Posts } from '../../api/posts/posts';

Meteor.startup(() => {
  if (Posts.find().count() === 0) {
    const data = [
      {
        title: 'My 1st blog post',
        createdAt: new Date(),
      },
      {
        title: 'My 2nd blog post',
        createdAt: new Date(),
      },
      {
        title: 'My 3rd blog post',
        createdAt: new Date(),
      },
    ];

    data.forEach((post) => Posts.insert(post));
  }
});

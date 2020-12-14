// METEOR
import { Mongo } from 'meteor/mongo';

// COLLECTION
class PostsCollection extends Mongo.Collection {}
export const Posts = new PostsCollection('posts');

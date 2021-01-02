// METEOR PACKAGES
import { FlowRouter } from 'meteor/ostrio:flow-router-extra';

// TEMPLATES
import '../../ui/layouts/app';
import '../../ui/pages/home';
import '../../ui/pages/notfound';

// HOME
FlowRouter.route('/', {
  name: 'home',
  action() {
    this.render('app', 'home');
  },
});

// NOT FOUND
FlowRouter.route('*', {
  action() {
    this.render('app', 'notfound');
  },
});

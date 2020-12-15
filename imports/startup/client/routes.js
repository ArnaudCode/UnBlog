// METEOR PACKAGES
import { FlowRouter } from 'meteor/ostrio:flow-router-extra';

// TEMPLATES
import '../../ui/layouts/body/body';
import '../../ui/pages/home/home';
import '../../ui/pages/not-found/not-found';

// HOME
FlowRouter.route('/', {
  name: 'Page_Home',
  action() {
    this.render('App_Body', 'Page_Home');
  },
});

// NOT FOUND
FlowRouter.route('*', {
  action() {
    this.render('App_Body', 'Page_NotFound');
  },
});

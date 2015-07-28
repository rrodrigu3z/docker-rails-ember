import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return this.store.find('task');
  },

  actions: {
    createTask: function() {
      let title = $('input[name=title]').val();
      let desc = $('input[name=description]').val();

      var task = this.store.createRecord('task', {
        title: title,
        description: desc
      });

      task.save();

      $('.form')[0].reset();
      this.refresh();
    }
  }
});

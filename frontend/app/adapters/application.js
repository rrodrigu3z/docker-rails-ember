import DS from 'ember-data';

export default DS.ActiveModelAdapter.extend({
  namespace: 'api/v1',
  host: 'http://docker:3000' // This needs to be a local domain pointing to Docker
});

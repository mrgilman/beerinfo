App.ApplicationAdapter = DS.RESTAdapter.extend
  namespace: "api/v1"

App.Store = DS.Store.extend
  adapter: DS.RESTAdapter

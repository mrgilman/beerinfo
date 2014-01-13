App.Router.map ()->
  @resource 'about'
  @resource 'countries', ->
    @resource 'country', { path: ':country_id' }

App.Router.reopen
  location: "history"

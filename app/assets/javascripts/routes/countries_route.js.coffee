App.CountriesRoute = Ember.Route.extend
  model: ->
    @store.find("country")

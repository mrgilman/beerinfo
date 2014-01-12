App.Router.map ()->
  @resource('about')
  @resource('countries')

App.Router.reopen
  location: "history"

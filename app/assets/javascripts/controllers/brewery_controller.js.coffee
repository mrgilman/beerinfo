App.BreweryController = Ember.ObjectController.extend

  isEditing: false

  edit: ->
    @set("isEditing", true)

  save: ->
    brewery = @get('model')
    brewery.save()
    @set("isEditing", false)

  addBeer: (attrs) ->
    brewery = @get('model')
    country = brewery.get("country")
    beer = {
      title: attrs.title
      abv: attrs.abv
      brewery: brewery
      country: country
    }
    if !attrs.title? or attrs.title.trim() is ""
      alert "Please give your beer a name!"
    else
      beer = @store.createRecord('beer', beer)
      @content.get("beers").pushObject(beer)
      beer.save()

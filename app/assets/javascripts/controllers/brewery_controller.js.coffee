App.BreweryController = Ember.ObjectController.extend

  isEditing: false

  edit: ->
    @set("isEditing", true)

  save: ->
    brewery = @get('model')
    brewery.save()
    @set("isEditing", false)

#= require ./store
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views
#= require_tree ./helpers
#= require_tree ./components
#= require_tree ./templates
#= require_tree ./routes
#= require ./router
#= require_self

App.ApplicationSerializer = DS.RESTSerializer.extend(keyForRelationship: (rel, kind) ->
  if kind is "belongsTo"
    underscored = rel.underscore()
    underscored + "_id"
  else
    singular = rel.singularize()
    underscored = singular.underscore()
    underscored + "_ids"
)

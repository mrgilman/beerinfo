App.Brewery = DS.Model.extend
  title: DS.attr("string")
  address: DS.attr("string")
  synonyms: DS.attr("string")
  beer_ids: DS.attr("string")
  country_id: DS.attr("number")
  country: DS.belongsTo("country")

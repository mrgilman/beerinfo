App.Beer = DS.Model.extend
  title: DS.attr("string")
  abv: DS.attr("number")
  country_id: DS.attr("number")
  country: DS.belongsTo("country")
  brewery_id: DS.attr("number")
  brewery: DS.belongsTo("brewery")

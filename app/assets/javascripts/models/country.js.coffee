App.Country = DS.Model.extend
  title: DS.attr("string")
  breweries: DS.hasMany("brewery", async: true)

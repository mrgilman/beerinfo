class BrewerySerializer < ActiveModel::Serializer
  attributes :id, :title, :address, :synonyms, :beer_count
  has_one :country, key: :country
  embed :ids

  def beer_count
    self.object.beers.count
  end

  has_many :beers, key: :beers

end

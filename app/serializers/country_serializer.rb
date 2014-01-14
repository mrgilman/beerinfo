class CountrySerializer < ActiveModel::Serializer
  embed :ids

  attributes :id, :title
  has_many :breweries, key: :breweries
end

Beer = BeerDb::Models::Beer

class Beer

  attr_accessible :title, :abv, :country_id, :brewery_id

  validates :title, presence: true

  before_validation do
    if self.key.blank?
      self.key = self.title.parameterize.gsub(/-/,'')
    end
  end

  def active_model_serializer
    BeerSerializer
  end

end

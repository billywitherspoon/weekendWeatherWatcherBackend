class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :name, :latitude, :longitude, :street_number, :street, :city, :state, :zip_code, :image, :tags

  has_many :favorites
  has_many :forecasts
  has_many :favorite_tags, through: :favorites
  has_many :users, through: :favorites

  def tags
    tag_names = []
    object.favorites.each do |fav|
        fav.tags.each do |tag|
          tag_names << tag.name
      end
    end
    tag_names = tag_names.join(',')
    "#{tag_names}"
  end


  # def temperature
  #   "Celsius: #{object.air_temperature.to_f}"
  # end
end

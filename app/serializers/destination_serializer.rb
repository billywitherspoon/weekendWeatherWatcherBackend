class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :name, :latitude, :longitude, :street_number, :street, :city, :state, :zip_code

  has_many :favorites
  has_many :forecasts
  has_many :favorite_tags, through: :favorites
  has_many :users, through: :favorites
end

class Destination < ApplicationRecord
  has_many :favorites
  has_many :forecasts
  has_many :favorite_tags, through: :favorites
end

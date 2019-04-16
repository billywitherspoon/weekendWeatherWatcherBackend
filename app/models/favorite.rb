class Favorite < ApplicationRecord
  has_many :favorite_tags
  belongs_to :destination
  belongs_to :user
  has_many :tags, through: :favorite_tags
  has_many :forecasts, through: :destination
end

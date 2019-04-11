class Favorite < ApplicationRecord
  has_many :favorite_tags
  belongs_to :destination
  belongs_to :user
  has_many :tags, through: :favorite_tags
end

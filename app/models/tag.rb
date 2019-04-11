class Tag < ApplicationRecord
  belongs_to :user
  has_many :favorite_tags
  has_many :favorites, through: :favorite_tags
end

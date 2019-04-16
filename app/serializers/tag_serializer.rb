class TagSerializer < ActiveModel::Serializer
  attributes :name, :user_id, :id
  belongs_to :user
  has_many :favorite_tags
  has_many :favorites, through: :favorite_tags
end

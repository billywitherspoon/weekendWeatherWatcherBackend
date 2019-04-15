class UserSerializer < ActiveModel::Serializer
  attributes :username, :password, :first_name, :last_name
  has_many :tags
  has_many :favorites
  has_many :favorite_tags, through: :tags
  has_many :destinations, through: :favorites
end

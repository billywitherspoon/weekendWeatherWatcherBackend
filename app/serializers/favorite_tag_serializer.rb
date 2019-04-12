class FavoriteTagSerializer < ActiveModel::Serializer
  attributes :tag_id, :favorite_id
  belongs_to :tag
  belongs_to :favorite
end

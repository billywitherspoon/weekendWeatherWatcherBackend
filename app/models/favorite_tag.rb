class FavoriteTag < ApplicationRecord
  belongs_to :tag
  belongs_to :favorite
end

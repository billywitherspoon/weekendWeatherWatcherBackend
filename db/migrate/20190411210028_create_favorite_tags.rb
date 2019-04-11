class CreateFavoriteTags < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_tags do |t|
      t.integer :favorite_id
      t.integer :tag_id

      t.timestamps
    end
  end
end

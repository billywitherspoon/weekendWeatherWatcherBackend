class CreateDestinationTags < ActiveRecord::Migration[5.2]
  def change
    create_table :destination_tags do |t|
      t.integer :destination_id
      t.integer :tag_id

      t.timestamps
    end
  end
end

class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :latitude
      t.string :longitude
      t.integer :street_number
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :image

      t.timestamps
    end
  end
end

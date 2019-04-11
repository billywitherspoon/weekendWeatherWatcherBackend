class CreateForecasts < ActiveRecord::Migration[5.2]
  def change
    create_table :forecasts do |t|
      t.text :data
      t.integer :destination_id

      t.timestamps
    end
  end
end

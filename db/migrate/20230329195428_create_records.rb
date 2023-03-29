class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.datetime :date
      t.string :location
      t.string :location_type
      t.string :location_size
      t.integer :chem_amount
      t.string :equipment
      t.string :start_time
      t.string :stop_time
      t.string :wind_direction
      t.integer :wind_velocity
      t.integer :temperature

      t.timestamps
    end
  end
end

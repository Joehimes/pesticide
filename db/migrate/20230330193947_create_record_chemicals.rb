class CreateRecordChemicals < ActiveRecord::Migration[7.0]
  def change
    create_table :record_chemicals do |t|
      t.integer :record_id
      t.integer :chemical_id

      t.timestamps
    end
  end
end

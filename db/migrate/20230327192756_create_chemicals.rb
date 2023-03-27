class CreateChemicals < ActiveRecord::Migration[7.0]
  def change
    create_table :chemicals do |t|
      t.string :name
      t.string :epa
      t.string :type
      t.string :company
      t.integer :amount
      t.string :unit

      t.timestamps
    end
  end
end

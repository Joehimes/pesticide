class RemoveTypeFromChemicals < ActiveRecord::Migration[7.0]
  def change
    change_table :chemicals do |t|
      t.remove :type
      t.string :pesticide_type
    end
  end
end

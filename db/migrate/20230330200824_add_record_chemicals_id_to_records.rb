class AddRecordChemicalsIdToRecords < ActiveRecord::Migration[7.0]
  def change
    add_column :records, :record_chemical_id, :integer
  end
end

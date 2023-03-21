class AddLicenseToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :license, :string
  end
end

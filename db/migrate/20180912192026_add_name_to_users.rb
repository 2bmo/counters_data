class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :login, :string
    add_column :customers, :first_name, :string
    add_column :customers, :last_name, :string
    add_column :customers, :address, :string
    add_column :admins, :login, :string
  end
end

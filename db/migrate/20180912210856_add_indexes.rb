class AddIndexes < ActiveRecord::Migration[5.2]
  def change
    add_index :admins, :login,                unique: true
    add_index :customers, :login,                 unique: true
    add_index :customers, :first_name,             unique: false
    add_index :customers, :last_name,             unique: true
    add_index :customers, :address,               unique: true
  end
end

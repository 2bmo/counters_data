class AddConfirmable < ActiveRecord::Migration[5.2]
  def up
    add_column :customers, :confirmation_token, :string
    add_column :customers, :confirmed_at, :datetime
    add_column :customers, :confirmation_sent_at, :datetime
    add_index :customers, :confirmation_token, unique: true
    Customer.all.update_all confirmed_at: DateTime.now
    add_column :admins, :confirmation_token, :string
    add_column :admins, :confirmed_at, :datetime
    add_column :admins, :confirmation_sent_at, :datetime
    add_index :admins, :confirmation_token, unique: true
    Admin.all.update_all confirmed_at: DateTime.now
  end
end

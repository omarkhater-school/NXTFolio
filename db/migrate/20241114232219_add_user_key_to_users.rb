class AddUserKeyToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :userKey, :string
    add_index :users, :userKey, unique: true
  end
end

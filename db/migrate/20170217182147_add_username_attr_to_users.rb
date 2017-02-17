class AddUsernameAttrToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :username, :string
    add_column :users, :fullname, :string
  end
end

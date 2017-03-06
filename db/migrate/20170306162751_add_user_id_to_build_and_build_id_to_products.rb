class AddUserIdToBuildAndBuildIdToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :builds, :user_id, :integer
    add_column :products, :build_id, :integer
  end
end

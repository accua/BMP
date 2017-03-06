class ChangeDescriptionsToDescription < ActiveRecord::Migration[5.0]
  def change
    remove_column :builds, :descriptions
    add_column :builds, :description, :text
  end
end

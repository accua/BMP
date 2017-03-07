class FixDbRelationships < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :build_id
    create_join_table :builds, :products
    create_join_table :builds, :users
  end
end

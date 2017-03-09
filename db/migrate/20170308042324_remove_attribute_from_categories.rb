class RemoveAttributeFromCategories < ActiveRecord::Migration[5.0]
  def change
    remove_column :categories, :product_id
  end
end

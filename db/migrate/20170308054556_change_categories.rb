class ChangeCategories < ActiveRecord::Migration[5.0]
  def change
    drop_table :categories_products

    add_column :products, :category_id, :integer
  end
end

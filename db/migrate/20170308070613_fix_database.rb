class FixDatabase < ActiveRecord::Migration[5.0]
  def change
    create_table :categories_products do |t|
      t.integer :product_id
      t.integer :category_id
    end

    remove_column :products, :category_id, :integer
  end
end

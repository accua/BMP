class CreateCommentAndProductTables < ActiveRecord::Migration[5.0]
  def change
    change_table :comments do |t|
      t.string :content
      t.integer :user_id
      t.integer :product_id
    end

    change_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
    end
  end
end

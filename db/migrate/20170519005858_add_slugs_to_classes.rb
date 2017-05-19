class AddSlugsToClasses < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :slug, :string
    add_index :posts, :slug, unique: true
    add_column :products, :slug, :string
    add_index :products, :slug, unique: true
    add_column :users, :slug, :string
    add_index :users, :slug, unique: true
  end
end

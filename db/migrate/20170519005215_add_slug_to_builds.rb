class AddSlugToBuilds < ActiveRecord::Migration[5.0]
  def change
    add_column :builds, :slug, :string
    add_index :builds, :slug, unique: true
  end
end

class CreateBuilds < ActiveRecord::Migration[5.0]
  def change
    create_table :builds do |t|
      t.string :name
      t.text :descriptions
      t.integer :price
      t.timestamps
    end
  end
end

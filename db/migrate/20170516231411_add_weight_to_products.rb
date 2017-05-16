class AddWeightToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :weight, :float
  end
end

class RemoveIdColumnsFromComments < ActiveRecord::Migration[5.0]
  def change
    remove_column :comments, :product_id
  end
end

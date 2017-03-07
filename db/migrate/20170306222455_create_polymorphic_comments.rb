class CreatePolymorphicComments < ActiveRecord::Migration[5.0]
  def change
    change_table :comments do |t|
      t.references :commentable, polymorphic: true, index: true
    end
  end
end

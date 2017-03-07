class ChangeTableStructure < ActiveRecord::Migration[5.0]
  def change
    drop_table :builds_users

    create_table :favorites do |t|
      t.integer :user_id
      t.references :favoritable, polymorphic: true, index: true
      t.timestamps
    end
  end
end

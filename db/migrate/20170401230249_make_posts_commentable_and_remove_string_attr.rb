class MakePostsCommentableAndRemoveStringAttr < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :string
    change_table :posts do |t|
      t.references :commentable, polymorphic: true, index: true
    end
  end
end

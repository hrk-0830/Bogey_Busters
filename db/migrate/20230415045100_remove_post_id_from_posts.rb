class RemovePostIdFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :post_id, :integer
    remove_column :posts, :tag_id, :integer
  end
end

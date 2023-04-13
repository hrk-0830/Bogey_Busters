class RemoveCustomerIdFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :customer_id, :integer
  end
end

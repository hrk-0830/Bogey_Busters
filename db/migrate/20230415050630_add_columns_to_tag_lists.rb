class AddColumnsToTagLists < ActiveRecord::Migration[6.1]
  def change
    add_reference :tag_lists, :tag, null: false, foreign_key: true
    add_reference :tag_lists, :post, null: false, foreign_key: true
  end
end

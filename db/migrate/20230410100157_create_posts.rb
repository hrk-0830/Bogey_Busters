class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      
      t.integer :customer_id, null: false
      t.string :golf_course, null: false
      t.string :title, null: false
      t.integer :prefecture_status, default: 0, null: false
      t.integer :difficulty_status, default: 0, null: false
      t.text :review, null: false
      t.string :star, null: false

      t.timestamps
    end
  end
end

class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :body
      t.integer :author_id

      t.timestamps null: false
    end
  end
end

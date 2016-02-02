class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :is
      t.boolean :is_public, default: false

      t.timestamps null: false
    end
  end
end

class AddUserIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :user_id, :integer, default: 1
    add_index :posts, :user_id
  end
end

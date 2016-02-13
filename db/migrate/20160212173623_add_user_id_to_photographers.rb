class AddUserIdToPhotographers < ActiveRecord::Migration
  def change
    add_column :photographers, :user_id, :integer
    add_index :photographers, :user_id
  end
end

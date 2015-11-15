class AddUserIdToSejours < ActiveRecord::Migration
  def change
    add_column :sejours, :user_id, :integer
    add_index :sejours, :user_id
  end
end

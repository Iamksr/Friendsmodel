class AddClmn11ToFriendlist < ActiveRecord::Migration[6.0]
  def change
    add_column :friendlists, :user_id, :integer
    add_column :friendlists, :friend_id, :integer
    add_column :friendlists, :accepted, :boolean
  end
end

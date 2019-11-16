class AddClmnToFriendlist < ActiveRecord::Migration[6.0]
  def change
    add_column :friendlists, :name, :string
  end
end

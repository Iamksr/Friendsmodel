class CreateFriendlists < ActiveRecord::Migration[6.0]
  def change
    create_table :friendlists do |t|

      t.timestamps
    end
  end
end

class AddCvnmToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :image, :string
    add_column :users, :imagebg, :string
  end
end

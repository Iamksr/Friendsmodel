class CreateFrnds < ActiveRecord::Migration[6.0]
  def change
    create_table :frnds do |t|
      t.string :email
      t.string :body
      t.string :user
      t.string :refrences

      t.timestamps
    end
  end
end

class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.text :post
      t.string :user
      t.string :screen_name
      t.string :icon
      t.integer :fav
      t.integer :rt
      t.integer :pos_x
      t.integer :pos_y
      t.integer :pos_z

      t.timestamps null: false
    end
  end
end

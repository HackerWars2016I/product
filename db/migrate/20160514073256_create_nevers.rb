class CreateNevers < ActiveRecord::Migration
  def change
    create_table :nevers do |t|
      t.string :post
      t.string :url
      t.string :src
      t.string :user
      t.integer :fav
      t.integer :view
      t.integer :pos_x
      t.integer :pos_y
      t.integer :pos_z      

      t.timestamps null: false
    end
  end
end

class CreateNevers < ActiveRecord::Migration
  def change
    create_table :nevers do |t|
      t.string :post
      t.integer :fav
      t.integer :view
      t.date :date

      t.timestamps null: false
    end
  end
end

class CreateTwitters < ActiveRecord::Migration
  def change
    create_table :twitters do |t|
      t.string :post
      t.integer :fav
      t.integer :RT

      t.timestamps null: false
    end
  end
end

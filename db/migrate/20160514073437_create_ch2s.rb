class CreateCh2s < ActiveRecord::Migration
  def change
    create_table :ch2s do |t|
      t.string :post
      t.date :date

      t.timestamps null: false
    end
  end
end

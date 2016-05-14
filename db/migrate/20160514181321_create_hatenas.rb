class CreateHatenas < ActiveRecord::Migration
  def change
    create_table :hatenas do |t|

      t.timestamps null: false
    end
  end
end

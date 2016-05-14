class AddColumnDate < ActiveRecord::Migration
  def change
    add_column :twitters, :date, :date
  end
end

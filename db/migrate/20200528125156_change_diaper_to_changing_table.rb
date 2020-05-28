class ChangeDiaperToChangingTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :places, :diaper, :changing_table
  end
end

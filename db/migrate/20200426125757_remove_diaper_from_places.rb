class RemoveDiaperFromPlaces < ActiveRecord::Migration[5.2]
  def change
    remove_column :places, :diaper
    remove_column :places, :toy
    remove_column :places, :high_chair
    remove_column :places, :play_area
  end
end

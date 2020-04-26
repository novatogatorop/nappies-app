class AddDiaperToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :diaper, :boolean, default: false
    add_column :places, :toy, :boolean, default: false
    add_column :places, :high_chair, :boolean, default: false
    add_column :places, :play_area, :boolean, default: false
  end
end

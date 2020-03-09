class RemovePlacefacilityFromPlaces < ActiveRecord::Migration[5.2]
  def change
    remove_column :places, :place_facility_id
  end
end

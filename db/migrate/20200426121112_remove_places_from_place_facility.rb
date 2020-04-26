class RemovePlacesFromPlaceFacility < ActiveRecord::Migration[5.2]
  def change
    remove_column :place_facilities, :place_id
    remove_column :place_facilities, :facility_id
    remove_column :facilities, :place_facility_id
  end
end

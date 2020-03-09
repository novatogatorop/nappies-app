class RemoveFacilitAddPlacefacility < ActiveRecord::Migration[5.2]
  def change
    remove_column :places, :facility_id
    add_reference :places, :place_facility, foreign_key: true
    add_reference :facilities, :place_facility, foreign_key: true

  end
end

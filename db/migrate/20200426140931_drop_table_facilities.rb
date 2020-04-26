class DropTableFacilities < ActiveRecord::Migration[5.2]
  def change
    drop_table :facilities
    drop_table :place_facilities
  end
end

class CreatePlaceFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :place_facilities do |t|
      t.references :place, foreign_key: true
      t.references :facility, foreign_key: true

      t.timestamps
    end
  end
end

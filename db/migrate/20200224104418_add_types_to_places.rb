class AddTypesToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_reference :places, :type, foreign_key: true
  end
end

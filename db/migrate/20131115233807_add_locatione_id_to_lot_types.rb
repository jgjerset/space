class AddLocationeIdToLotTypes < ActiveRecord::Migration
  def change
    add_column :lot_types, :location_id, :integer
  end
end

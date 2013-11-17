class FixColumnName < ActiveRecord::Migration
  def up
  	rename_column :lot_types, :type, :lot_type_desc
  end

  def down
  end
end

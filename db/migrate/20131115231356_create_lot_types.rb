class CreateLotTypes < ActiveRecord::Migration
  def change
    create_table :lot_types do |t|
      t.string :type
      t.string :description
      t.decimal :rate, precision: 8, scale: 2
      t.integer :numspots
      t.datetime :startdate
      t.datetime :enddate

      t.timestamps
    end
  end
end

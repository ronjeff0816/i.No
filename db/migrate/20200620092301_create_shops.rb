class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string shop_name, null: false
      t.integer condition, null: false
      t.text introduction
      t.string shop_tel
      t.string sho_add, null: false
      t.time weekday_open
      t.time weekday_close
      t.time weekend_open
      t.time weekend_close
      t.string dayoff
      t.integer owner_id
      t.integer town_id, null: false
      t.boolean corona_twoWays
      t.boolean corona_twoMeters
      t.boolean corona_partition
      t.boolean corona_disinfect
      t.boolean corona_mask
      t.boolean corona_temperature
      t.boolean corona_distance
      t.boolean corona_customerDisinfect
      t.boolean corona_customerDistance
      t.boolean corona_exit

      t.timestamps
    end
  end
end

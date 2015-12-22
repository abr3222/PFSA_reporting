class CreatePoliceStations < ActiveRecord::Migration
  def up
    create_table :police_stations do |t|

      t.string"station_name"
      t.string"station_code"

      t.timestamps null: false
    end
  end

  def down

    drop_table :police_stations



  end
end

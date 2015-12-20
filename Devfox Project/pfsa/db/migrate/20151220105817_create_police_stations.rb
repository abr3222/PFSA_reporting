class CreatePoliceStations < ActiveRecord::Migration
  def change
    create_table :police_stations do |t|

      t.timestamps null: false
    end
  end
end

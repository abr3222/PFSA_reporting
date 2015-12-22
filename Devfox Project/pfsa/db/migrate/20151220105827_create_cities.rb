class CreateCities < ActiveRecord::Migration
  def up
    create_table :cities do |t|
    t.string"city_name", :null =>false
    t.string"city_code", :null =>false
    t.string"city_short_name"
    t.timestamps null: false
    end
  end
  def down

drop_table :cities

  end

end

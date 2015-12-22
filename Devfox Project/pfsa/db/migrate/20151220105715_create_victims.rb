class CreateVictims < ActiveRecord::Migration
  def up
    create_table :victims do |t|
      t.string "victim_cnic" , :limit => 50, :null=> false
      t.string "victim_name", :limit => 50 , :null=> false
      t.string "victim_address", :limit => 50
      t.string "victim_contact", :limit => 50
      t.string "victim_beltno", :limit => 50

      t.timestamps null: false
    end
  end

  def down

    drop_table :victims

  end
end

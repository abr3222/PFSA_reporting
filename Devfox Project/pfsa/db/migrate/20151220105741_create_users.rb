class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string"user_name", :limit => 100,:null=>false
      t.string"user_address", :limit => 100,:null=>false
      t.string"user_cnic", :limit=>30,:null =>false
      t.string"user_password" ,:limit => 50 ,:null=>false
      t.string"user_email" ,:limit => 50, :null => true
      t.string"user_contact" ,:limit => 50, :null => true





      t.timestamps null: false
    end
  end

  def down

  drop_table :users


  end
end

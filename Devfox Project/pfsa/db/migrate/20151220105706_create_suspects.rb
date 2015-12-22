class CreateSuspects < ActiveRecord::Migration
  def up
    create_table :suspects do |t|
      t.string "suspect_cnic" , :limit => 50, :null=> false
      t.string "suspect_name", :limit => 50 , :null=> false
      t.string "suspect_address", :limit => 50
      t.string "suspect_contact", :limit => 50
      t.string "suspect_beltno", :limit => 50

      t.timestamps null: false
    end
  end

  def down
    drop_table :suspects

  end
end

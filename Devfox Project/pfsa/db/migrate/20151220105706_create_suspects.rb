class CreateSuspects < ActiveRecord::Migration
  def up
    create_table :suspects do |t|
      t.string "suspect_cnic" , :limit => 50, :null=> false
      t.string "suspect_name", :limit => 50 , :null=> false
      t.string "suspect_address", :limit => 50
      t.string "suspect_contact", :limit => 50
      t.string "suspect_district"
      t.string "suspect_charges"
      t.text "suspect_charges_detail", :limit => 200
      t.string "suspect_province"
      t.timestamps null: false
      t.string"remove krna hai"
    end
    add_index(:suspects,:suspect_cnic, :unique => true)
  end

  def down
    drop_table :suspects

  end
end

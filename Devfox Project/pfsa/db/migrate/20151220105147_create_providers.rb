class CreateProviders < ActiveRecord::Migration
  def up
    create_table :providers do |t|
	t.string "provider_cnic" , :limit => 50, :null=> false
	t.string "provider_name", :limit => 50 , :null=> false
	t.string "provider_address", :limit => 50
	t.string "provider_contact", :limit => 50
	t.string "provider_beltno", :limit => 50
  t.string"provider_district"
        t.timestamps null: false

		end

		add_index(:providers,:provider_cnic, :unique => true)

		#Above the method to make a coulumn unique
		#

end

	def down

	drop_table :providers 

  end

end

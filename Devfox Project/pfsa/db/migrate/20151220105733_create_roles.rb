class CreateRoles < ActiveRecord::Migration
  def up
    create_table :roles do |t|
      t.string"super_admin", :limit=>50
      t.string"admin", :limit=>50
      t.string"supervisor", :limit=>50
      t.string"scientists", :limit=>50
      t.string"technician", :limit=>50
      t.string"eru_user", :limit=>50
      t.string"icc_user", :limit=>50



      t.timestamps null: false
    end
  end

  def down

    drop_table :roles

  end

end

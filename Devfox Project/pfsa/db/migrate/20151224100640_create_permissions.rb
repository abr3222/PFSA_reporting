class CreatePermissions < ActiveRecord::Migration
  def up
    create_table :permissions do |t|

      t.timestamps null: false
    end
  end


  def down

    
  end


end

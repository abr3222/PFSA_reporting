class CreatePermissions < ActiveRecord::Migration
  def up
    create_table :permissions do |t|

      t.string"add"
      t.string"delete"
      t.string"update"
      t.string"view"


      t.timestamps null: false
    end
  end

  def down

    drop_table :permissions

  end
end

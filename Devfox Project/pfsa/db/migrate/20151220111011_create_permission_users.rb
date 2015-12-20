class CreatePermissionUsers < ActiveRecord::Migration
  def change
    create_table :permission_users do |t|

      t.timestamps null: false
    end
  end
end

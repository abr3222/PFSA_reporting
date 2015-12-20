class CreateRoleUsers < ActiveRecord::Migration
  def change
    create_table :role_users do |t|

      t.timestamps null: false
    end
  end
end

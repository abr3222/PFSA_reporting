class CreateDepartmentUsers < ActiveRecord::Migration
  def change
    create_table :department_users do |t|

      t.timestamps null: false
    end
  end
end

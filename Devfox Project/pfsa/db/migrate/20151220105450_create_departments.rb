class CreateDepartments < ActiveRecord::Migration
  def up
    create_table :departments do |t|

      t.string"department_name",:limit => 60,:null => false
      t.timestamps null: false
    end
  end
  def down


    drop_table :departments
  end

end

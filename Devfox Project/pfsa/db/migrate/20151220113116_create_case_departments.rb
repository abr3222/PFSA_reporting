class CreateCaseDepartments < ActiveRecord::Migration
  def change
    create_table :case_departments do |t|

      t.timestamps null: false
    end
  end
end

class CreatePfsaCases < ActiveRecord::Migration
  def up
    create_table :pfsa_cases do |t|
      t.string"serial_key",:null=>false
      t.string"pfsa_case_id" ,:null=>false
      t.string"pfsa_case_year"
      t.timestamps null: false
    end
    add_index(:pfsa_cases,:pfsa_case_id,:unique => true)
    add_index(:pfsa_cases,:serial_key,:unique => true)
  end
  def down
    drop_table :pfsa_cases
  end
end

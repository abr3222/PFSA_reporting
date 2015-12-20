class CreatePfsaCases < ActiveRecord::Migration
  def change
    create_table :pfsa_cases do |t|

      t.timestamps null: false
    end
  end
end

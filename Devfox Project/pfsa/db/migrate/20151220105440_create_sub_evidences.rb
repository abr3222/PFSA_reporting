class CreateSubEvidences < ActiveRecord::Migration
  def change
    create_table :sub_evidences do |t|

      t.timestamps null: false
    end
  end
end

class CreateDetailEvidences < ActiveRecord::Migration
  def change
    create_table :detail_evidences do |t|

      t.timestamps null: false
    end
  end
end

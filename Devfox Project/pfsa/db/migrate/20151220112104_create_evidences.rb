class CreateEvidences < ActiveRecord::Migration
  def up

    create_table :evidences do |t|


      t.string"evidence_name"
      t.string"evidence_type"
      t.integer"evidence_quantitiy"
      t.string"evidence_condition"
      t.string"evidence_details"
      t.string"road_letter"
      t.datetime"Submitted_at"

      t.timestamps null: false
    end
  end
  def down

    drop_table :evidences

  end
end

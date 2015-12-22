class CreateEvidences < ActiveRecord::Migration
  def up

    create_table :evidences do |t|
      t.string"evidence_id" , :null => false
      t.string"assignment_status"
      t.string"evidence_name"
      t.string"evidence_type"
      t.integer"evidence_quantitiy"
      t.string"evidence_condition"
      t.string"evidence_details"
      t.string"road_letter"
      t.datetime"leaving_at"

      t.timestamps null: false
    end
    add_index(:evidences,:evidence_id, :unique => true)

  end
  def down

    drop_table :evidences

  end
end

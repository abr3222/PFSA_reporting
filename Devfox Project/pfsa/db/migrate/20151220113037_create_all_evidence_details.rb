class CreateAllEvidenceDetails < ActiveRecord::Migration
  def change
    create_table :all_evidence_details do |t|

      t.timestamps null: false
    end
  end
end

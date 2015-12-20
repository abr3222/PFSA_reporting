class CreateAllEvidenceTypes < ActiveRecord::Migration
  def change
    create_table :all_evidence_types do |t|

      t.timestamps null: false
    end
  end
end

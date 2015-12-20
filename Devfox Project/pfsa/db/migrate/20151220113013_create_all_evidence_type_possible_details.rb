class CreateAllEvidenceTypePossibleDetails < ActiveRecord::Migration
  def change
    create_table :all_evidence_type_possible_details do |t|

      t.timestamps null: false
    end
  end
end

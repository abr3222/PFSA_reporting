class CreateAllEvidenceTypes < ActiveRecord::Migration
  def change
    create_table :all_evidence_types do |t|
      t.string"evidence_name", :limit => 50
      t.timestamps null: false
    end
  end
end

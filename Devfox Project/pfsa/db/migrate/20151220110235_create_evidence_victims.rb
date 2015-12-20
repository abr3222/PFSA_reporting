class CreateEvidenceVictims < ActiveRecord::Migration
  def change
    create_table :evidence_victims do |t|
      t.datetime "createdat"
      t.timestamps null: false
    end
  end
end

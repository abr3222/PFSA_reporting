class CreateEvidenceVictims < ActiveRecord::Migration
  def up

    create_table :evidence_victims do |t|






      t.timestamps null: false
    end
  end
  def down

    drop_table :evidence_victims

  end
end

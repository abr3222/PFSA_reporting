class CreateEvidenceUsers < ActiveRecord::Migration
  def change
    create_table :evidence_users do |t|

      t.timestamps null: false
    end
  end
end
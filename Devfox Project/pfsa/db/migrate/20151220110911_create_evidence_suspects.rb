class CreateEvidenceSuspects < ActiveRecord::Migration
  def change
    create_table :evidence_suspects do |t|

      t.timestamps null: false
    end
  end
end

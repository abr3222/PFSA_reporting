class CreateSubEvidences < ActiveRecord::Migration
  def up
    create_table :sub_evidences do |t|

      t.string"sub_evidence_name", :limit =>200, :null =>false
      t.string"sub_evidence_detail", :limit =>200, :null =>true


      t.timestamps null: false
    end
  end
  def down

    drop_table :sub_evidences


  end

end

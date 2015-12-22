class CreateSubEvidences < ActiveRecord::Migration
  def up


    create_table :sub_evidences do |t|
      t.string"sub_evidence_id", :limit => 50 ,:null => false
      t.string"sub_evidence_name"
      t.text"sub_evidence_detail", :limit => 200
      t.string"sub_evidence_pictures"
      t.string"sub_evidence_audio"
      t.string"sub_evidence_video"
      t.string"sub_evidence_others"
      t.timestamps null: false
    end
  end
  def down

    drop_table :sub_evidences


  end

end

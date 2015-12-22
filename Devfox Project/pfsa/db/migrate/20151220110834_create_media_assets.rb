class CreateMediaAssets < ActiveRecord::Migration
  def up
    create_table :media_assets do |t|

      t.string"asset_image"
      t.string"asset_video"
      t.string"asset_audio"
      t.string"asset_others"
      t.timestamps null: false
    end
  end

  def down
drop_table :media_assets

  end
end

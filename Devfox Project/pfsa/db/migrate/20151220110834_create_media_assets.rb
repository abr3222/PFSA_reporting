class CreateMediaAssets < ActiveRecord::Migration
  def up
    create_table :media_assets do |t|
      t.string"Jolly"
      t.string"shezi testing"
      t.timestamps null: false
    end
  end

  def down
    drop_table :media_assets

  end
end

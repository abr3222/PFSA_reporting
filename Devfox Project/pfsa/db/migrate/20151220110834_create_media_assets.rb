class CreateMediaAssets < ActiveRecord::Migration
  def change
    create_table :media_assets do |t|
    t.string"shezi"

      t.timestamps null: false
    end
  end

  def down
drop_table :media_assets

  end
end

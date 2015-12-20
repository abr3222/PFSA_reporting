class CreateMediaAssets < ActiveRecord::Migration
  def change
    create_table :media_assets do |t|

      t.timestamps null: false
    end
  end
end

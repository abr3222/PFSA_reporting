class CreateJollies < ActiveRecord::Migration
  def change
    create_table :jollies do |t|
      t.string"Jolly lolly"
      t.timestamps null: false
    end
  end
end

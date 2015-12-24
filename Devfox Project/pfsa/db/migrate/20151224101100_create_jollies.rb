class CreateJollies < ActiveRecord::Migration
  def change
    create_table :jollies do |t|
      t.string "ShexiPc"

      t.string" Abr jolly Pc"

      t.string"Jolly lolly"
      t.timestamps null: false
    end
  end
end

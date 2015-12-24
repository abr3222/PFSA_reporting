class CreateJollies < ActiveRecord::Migration
  def change
    create_table :jollies do |t|
      t.string "ShexiPc"

      t.string" Abr jolly Pc"

      t.string"Barye bahya and jolly :P :P"
      t.string"Jolly ABR"

      t.string"Abr Dekh rha hay "
      t.timestamps null: false
    end
  end
end

class CreateJollies < ActiveRecord::Migration
  def change
    create_table :jollies do |t|
      t.string "ShexiPc"


      t.timestamps null: false
    end
  end
end

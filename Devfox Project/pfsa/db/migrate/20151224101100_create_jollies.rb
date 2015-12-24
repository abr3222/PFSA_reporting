class CreateJollies < ActiveRecord::Migration
  def change
    create_table :jollies do |t|

      t.timestamps null: false
    end
  end
end

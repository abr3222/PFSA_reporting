class CreateVictims < ActiveRecord::Migration
  def change
    create_table :victims do |t|

      t.timestamps null: false
    end
  end
end

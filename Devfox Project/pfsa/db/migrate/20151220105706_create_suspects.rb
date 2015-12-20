class CreateSuspects < ActiveRecord::Migration
  def change
    create_table :suspects do |t|

      t.timestamps null: false
    end
  end
end

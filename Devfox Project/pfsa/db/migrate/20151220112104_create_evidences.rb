class CreateEvidences < ActiveRecord::Migration
  def change
    create_table :evidences do |t|

      t.timestamps null: false
    end
  end
end

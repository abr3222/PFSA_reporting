class CreateAbrs < ActiveRecord::Migration
  def change
    create_table :abrs do |t|

      t.timestamps null: false
    end
  end
end

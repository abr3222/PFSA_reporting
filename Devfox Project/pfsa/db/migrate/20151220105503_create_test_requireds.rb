class CreateTestRequireds < ActiveRecord::Migration
  def change
    create_table :test_requireds do |t|

      t.timestamps null: false
    end
  end
end

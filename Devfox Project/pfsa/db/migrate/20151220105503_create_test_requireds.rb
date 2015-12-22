class CreateTestRequireds < ActiveRecord::Migration
  def up
    create_table :test_requireds do |t|
      t.string"test_name",:null=> false, :limit=> 60;

      t.timestamps null: false
    end
  end

  def down

    drop_table :test_requireds

  end
end

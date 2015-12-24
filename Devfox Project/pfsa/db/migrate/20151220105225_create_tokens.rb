class CreateTokens < ActiveRecord::Migration
  def up
    create_table :tokens do |t|
      t.string"serial_key",:null=>false
      t.text"token_detail", :limit =>200
      t.timestamps null: false
    end
  end

  def down
   drop_table :tokens

  end
end

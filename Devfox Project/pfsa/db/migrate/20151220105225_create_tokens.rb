class CreateTokens < ActiveRecord::Migration
  def up
    create_table :tokens do |t|


      t.string"token_detail",:null => true
      t.timestamps null: false
    end
  end

  #
  def down
   drop_table :tokens

  end
end

class CreateListRequiredTests < ActiveRecord::Migration
  def change
    create_table :list_required_tests do |t|

      t.timestamps null: false
    end
  end
end

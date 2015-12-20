class CreateReportUsers < ActiveRecord::Migration
  def change
    create_table :report_users do |t|

      t.timestamps null: false
    end
  end
end

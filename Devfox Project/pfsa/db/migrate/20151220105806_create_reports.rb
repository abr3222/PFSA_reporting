class CreateReports < ActiveRecord::Migration
  def up
    create_table :reports do |t|

      t.string"report_link"
      t.string"report_status"

      t.timestamps null: false
    end
  end


  def down

    drop_table :reports

  end

end

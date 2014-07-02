class CreateBugReports < ActiveRecord::Migration
  def change
    create_table :bug_reports do |t|
      t.string :description
      t.string :appName

      t.timestamps
    end
  end
end

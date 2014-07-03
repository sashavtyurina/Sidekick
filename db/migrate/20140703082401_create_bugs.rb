class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.string :description
      t.string :application_name

      t.timestamps
    end
  end
end

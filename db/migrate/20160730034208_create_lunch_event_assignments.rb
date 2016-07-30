class CreateLunchEventAssignments < ActiveRecord::Migration
  def change
    create_table :lunch_event_assignments do |t|
      t.references :lunch_event, index: true, foreign_key: true
      t.references :group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateLunchAssignments < ActiveRecord::Migration
  def change
    create_table :lunch_assignments do |t|
      t.references :user, index: true, foreign_key: true
      t.references :lunch_event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

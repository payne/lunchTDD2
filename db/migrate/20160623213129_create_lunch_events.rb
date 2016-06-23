class CreateLunchEvents < ActiveRecord::Migration
  def change
    create_table :lunch_events do |t|
      t.date :lunchtime
      t.references :group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

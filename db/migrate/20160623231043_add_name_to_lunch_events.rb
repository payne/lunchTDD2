class AddNameToLunchEvents < ActiveRecord::Migration
  def change
    add_column :lunch_events, :name, :string
  end
end

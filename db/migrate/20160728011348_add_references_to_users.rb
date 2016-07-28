class AddReferencesToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :groups, index: true, foreign_key: true
  end
end

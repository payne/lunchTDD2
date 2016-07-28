class AddEmailsSentToLunchEvents < ActiveRecord::Migration
  def change
    add_column :lunch_events, :announcement_email_sent, :boolean
    add_column :lunch_events, :num_reminder_emails, :integer
  end
end

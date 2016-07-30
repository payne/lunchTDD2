class Group < ActiveRecord::Base
  validates :title, presence: true

  has_many :group_assignments
  has_many :users, through: :group_assignments

  # Requires: rails g model  lunch_event_assignments lunch_event:references group:references; bin/rake db:migrate
  has_many :lunch_event_assignments
  has_many :lunch_events, through: :lunch_event_assignments

  def to_s
    title
  end

end

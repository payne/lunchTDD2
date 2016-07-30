class Group < ActiveRecord::Base
  validates :title, presence: true

  has_many :group_assignments
  has_many :users, through: :group_assignments

  # Requires: rails g lunch_event_assignments lunch_event:references group:references
  has_many :lunch_event_assignments
  has_many :lunch_events, through: :lunch_event_assignments

  def to_s
    title
  end

end

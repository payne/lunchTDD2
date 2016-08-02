class Group < ActiveRecord::Base
  validates :title, presence: true

  has_many :group_assignments
  has_many :users, through: :group_assignments

  has_many :lunch_events

  def to_s
    title
  end

end

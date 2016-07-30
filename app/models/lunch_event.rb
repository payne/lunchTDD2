class LunchEvent < ActiveRecord::Base
  validates :lunchtime, presence: true


  has_many :lunch_assignments
  has_many :users, through: :lunch_assignments

  belongs_to :group
end

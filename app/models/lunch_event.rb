class LunchEvent < ActiveRecord::Base
  validates :lunchtime, presence: true

  belongs_to :group
end

class LunchAssignment < ActiveRecord::Base
  belongs_to :user
  belongs_to :lunch_event
end

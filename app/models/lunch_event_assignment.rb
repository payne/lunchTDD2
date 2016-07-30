class LunchEventAssignment < ActiveRecord::Base
  belongs_to :lunch_event
  belongs_to :group
end

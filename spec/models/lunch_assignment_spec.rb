require 'rails_helper'

RSpec.describe LunchAssignment, type: :model do
  describe 'validations' do
    it 'requires something' do
      user = User.new(email: 'demo@demo.com')
      lunch_event = LunchEvent.new(lunchtime: '2016-07-27')
      lunch_assignment = LunchAssignment.new(user: user,lunch_event: lunch_event)
      expect(lunch_assignment.valid?).to be(true)
      expect(lunch_event.users.length()).to be(1)
    end
  end
end

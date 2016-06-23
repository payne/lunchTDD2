require 'rails_helper'

RSpec.describe LunchEvent, type: :model do
  describe 'validations' do
    it 'requires lunchtime' do
      lunch_event= LunchEvent.new(lunchtime: '')
      lunch_event.valid?
      expect(lunch_event.errors[:lunchtime]).to include("can't be blank")
    end
  end
end

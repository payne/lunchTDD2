require 'rails_helper'
require_relative '../support/data_setup'

RSpec.describe LunchAssignment, type: :model do
  describe 'validations' do
    it 'requires something' do
      user = User.new(first_name: 'Dom', last_name: 'Demo',email: 'demo@demo.com',password: 'fab!1234')
      lunch_event = LunchEvent.new(lunchtime: '2016-07-27')
      lunch_assignment = LunchAssignment.new(user: user,lunch_event: lunch_event)
      expect(lunch_assignment.valid?).to be(true)
    end
  end

  describe 'associations' do
    it 'one group per lunch event' do
      ds = DataSetup.new
      beatles, wings, paul, ringo =ds.people_and_groups_setup
      lunch_event = beatles.lunch_events.create(lunchtime: '2016-07-27')
      expect(beatles.lunch_events.length()).to eq(1)
      expect(lunch_event.valid?).to be(true)
      lunch_event.users << paul << ringo
      lunch_event.save
      expect(lunch_event.valid?).to be(true)
      expect(lunch_event.users.length()).to eq(2)
      beatles.save
      expect(beatles.lunch_events.length()).to eq(1)
      le2 = beatles.lunch_events.create(lunchtime: '2016-07-28')
      expect(le2.valid?).to be(true)
      expect(beatles.lunch_events.length()).to eq(2)
      le3 = beatles.lunch_events.create(lunchtime: '2016-07-29')
      expect(le3.valid?).to be(true)
      beatles.save
      expect(le3.valid?).to be(true)
      le3.save
      expect(le3.valid?).to be(true)
      expect(beatles.lunch_events.length()).to eq(3)
    end
  end

end

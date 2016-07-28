require 'rails_helper'
require_relative '../support/new_group_form'

feature 'announce lunch' do
  scenario 'create group, lunch event, and announce it' do
    john = User.new(first_name: 'John', last_name: 'Lennon', email: 'john@beatles.com', password: 'rock!1965')
    paul = User.new(first_name: 'Paul', last_name: 'McCartney', email: 'paul@beatles.com', password: 'rock!1965')
    beatles = Group.new(title: 'The Beatles')
    expect(beatles.valid?).to be(true)
    beatles.users << john
    beatles.users << paul
    expect(beatles.valid?).to be(true)
    beatles.save # Must do to get the next two lines to pass.
    group = Group.first
    expect(group.valid?).to be(true)
    lunch_event = LunchEvent.new(lunchtime: '2016-07-27', group:beatles)
    lunch_event.save
    expect(lunch_event.valid?).to be(true)
    visit("/lunch_events/#{lunch_event.id}")
    expect(page).to have_content("Announce Lunch!")
    visit("/lunch_events/#{lunch_event.id}/announce")
    expect(page).to have_content("Announcement email will be sent")
  end
end

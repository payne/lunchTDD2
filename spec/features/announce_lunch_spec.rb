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
  end
end

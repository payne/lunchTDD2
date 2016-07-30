require 'rails_helper'

RSpec.describe GroupAssignment, type: :model do
  describe 'valid association demo' do
    it 'allows two users in a group' do
      john = User.new(email: 'john@beatles.com', password: 'rock!1965')
      paul = User.new(email: 'paul@beatles.com', password: 'rock!1965')
      george = User.new(email: 'george@beatles.com', password: 'rock!1965')
      ringo = User.new(email: 'ringo@beatles.com', password: 'rock!1965')
      beatles = Group.new(title: 'The Beatles')
      expect(beatles.valid?).to be(true)
      beatles.users << john
      beatles.users << paul
      beatles.users << george
      beatles.users << ringo
      expect(beatles.valid?).to be(true)
      expect(beatles.users.length()).to eq(4)
      linda = User.new(email: 'linda@wings.com', password: 'rock!1970')
      wings = Group.new(title: 'Wings')
      wings.users << paul
      wings.users << linda
      expect(wings.users.length()).to eq(2)
      wings.save
      beatles.save
      paul.save
      expect(paul.groups.length()).to eq(2)
    end
  end
end

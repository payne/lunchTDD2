require 'rails_helper'

RSpec.describe GroupAssignment, type: :model do
  describe 'valid association demo' do
    it 'allows two users in a group' do
      john = User.new(email: 'john@beatles.com', password: 'rock!1965')
      paul = User.new(email: 'paul@beatles.com', password: 'rock!1965')
      beatles = Group.new(title: 'The Beatles')
      expect(beatles.valid?).to be(true)
      beatles.users << john
      beatles.users << paul
      expect(beatles.valid?).to be(true)
    end
  end
end

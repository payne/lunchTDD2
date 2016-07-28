require 'rails_helper'

RSpec.describe GroupAssignment, type: :model do
  describe 'valid association demo' do
    it 'allows two users in a group' do
      john = User.new(email: 'john@beatles.com')
      paul = User.new(email: 'paul@beatles.com')
      beatles = Group.new(title: 'The Beatles')
      expect(beatles.valid?).to be(true)
      #beatles.users << john
      #beatles.users << paul
      expect(beatles.valid?).to be(true)
    end
  end
end

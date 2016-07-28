require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'requires email' do
      user = User.new(email: '')
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end
  end

  describe 'associations' do
    it 'many groups can be associated with a user' do
      paul = User.new(email: 'paul@beatles.com')
      expect(paul.valid?).to be(true)
      beatles = Group.new(title: 'The Beatles')
      paul.groups << beatles
      wings = Group.new(title: 'Wings')
      paul.groups << wings
      expect(paul.valid?).to be(true)
      expect(pau.groups.length()).to be(2)
    end
  end
end

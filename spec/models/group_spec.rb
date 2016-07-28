require 'rails_helper'

RSpec.describe Group, type: :model do

  describe 'validations' do
    it 'requires title' do
      group = Group.new(title: '')
      group.valid?
      expect(group.errors[:title]).to include("can't be blank")
    end
  end

  describe 'many users in a group' do
    it 'can have several people' do
      group = Group.new(title: 'Four Folks')
      expect(group.valid?).to be(true)
      group.save
      john = group.users.create(email: 'john@beatles.com',password: 'fab!1234')
      paul = User.new(email: 'paul@beatles.com',password: 'fab!1234')
      group.users << paul
      expect(group.users.length()).to be(2)
      #TODO(MGP): Make a test that shows one invalid user makes the group invalid.
      expect(group.valid?).to be(true)
    end
  end
end

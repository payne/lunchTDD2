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
      john = User.new(email: 'john@beatles.com')
      
    end
  end
end

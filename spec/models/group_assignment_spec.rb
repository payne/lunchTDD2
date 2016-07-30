require 'rails_helper'
require_relative '../support/data_setup'

RSpec.describe GroupAssignment, type: :model do
  describe 'valid association demo' do
    it 'allows two users in a group' do
      ds = DataSetup.new
      beatles, wings, paul, ringo =ds.people_and_groups_setup
      expect(beatles.valid?).to be(true)
      expect(beatles.valid?).to be(true)
      expect(beatles.users.length()).to eq(4)
      expect(wings.users.length()).to eq(2)
      expect(paul.groups.length()).to eq(2)
      expect(ringo.groups.length()).to eq(1)
      expect(paul.groups).to include(beatles, wings)
      martin = beatles.users.create(email:'GeorgeMartin@beatles.com',password:'fifthBEATLE')
      expect(beatles.users.length()).to eq(5)
    end
  end
end

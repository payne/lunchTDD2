require 'rails_helper'

RSpec.describe Group, type: :model do

  describe 'validations' do
    it 'requires title' do
      group = Group.new(title: '')
      group.valid?
      expect(group.errors[:title]).to include("can't be blank")
    end
  end
end

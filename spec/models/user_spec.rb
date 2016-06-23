require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'requires email' do
      user = User.new(email: '')
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end
  end
end

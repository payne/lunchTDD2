require "rails_helper"

RSpec.describe UserMailer, type: :mailer do

  # cache!
  let(:email) { UserMailer.lunch_announcement('demo@demo.com').deliver_now }

  it 'sends lunch_announcement email to people in group' do
    expect(email.to).to include('demo@demo.com')
  end

  it 'has correct subject' do
    expect(email.subject).to eq('54Lunch.com Announcement')
  end

end

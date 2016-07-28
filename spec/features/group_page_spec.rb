require 'rails_helper'

feature 'group page' do
  scenario 'group public page' do
    visit new_user_registration_path
    fill_in 'Email', :with => 'newuser@example.com'
    fill_in 'user_password', :with => 'userpassword'
    fill_in 'user_password_confirmation', :with => 'userpassword'
    click_button 'Sign up'
    expect(page).to have_content('Welcome')

    group_title = 'Java and JVM Junkies'
    # in database (build is in RAM)
    group = FactoryGirl.create(:group, title: group_title)
    #print "group id is #{group.id}"
    visit("/groups/#{group.id}")

    expect(page).to have_content(group_title)
  end
end

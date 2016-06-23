require 'rails_helper'

feature 'group page' do
  scenario 'group public page' do
    group_title = 'Java and JVM Junkies'
    group = FactoryGirl.create(:group, title: group_title) # in database (build is in RAM)
    visit("/groups/#{group.id}")

    expect(page).to have_content(group_title)
  end
end

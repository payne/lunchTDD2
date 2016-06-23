require 'rails_helper'
require_relative '../support/new_group_form'

feature 'create new group' do
  scenario 'create new group with valid data' do
    new_group_form = NewGroupForm.new
    new_group_form.visit_page.fill_in_with(
      title: 'Java Junkies'
    ).submit

    expect(page).to have_content('Group has been created.')
  end

  scenario 'cannot create group with invalid data' do
    new_group_form = NewGroupForm.new
    new_group_form.visit_page.fill_in_with.submit
    expect(page).to have_content("can't be blank")
  end
end

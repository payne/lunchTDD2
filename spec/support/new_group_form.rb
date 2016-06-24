class NewGroupForm
  include Capybara::DSL # visit, click_on, fill_in, and friends

  def visit_page
    register
    visit('/groups/new')
    self
  end

  def register
    visit('/users/sign_up')
    #fill_in 'First name', :with => 'New'
    #fill_in 'Last name', :with => 'User'
    fill_in 'Email', :with => 'newuser@example.com'
    fill_in 'user_password', :with => 'userpassword'
    fill_in 'user_password_confirmation', :with => 'userpassword'
    click_button 'Sign up'
    #expect(page).to have_content('Welcome')
    self
  end

  def fill_in_with(params = {})
    fill_in('Title', with: params.fetch(:title)) if params.key?(:title)
    fill_in('Description', with: params.fetch(:description, 'People who like that stuff...'))
    check('Accepting new members') if params.fetch(:growing, true)
    self
  end

  def submit
    click_on('Create Group')
    self
  end
end

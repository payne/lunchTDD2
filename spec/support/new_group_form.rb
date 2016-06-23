class NewGroupForm
  include Capybara::DSL # visit, click_on, fill_in, and friends

  def visit_page
    visit('/')
    click_on('New Group') # TODO Use id instead of text.
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

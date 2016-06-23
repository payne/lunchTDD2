  describe 'UserRegistration' do
    it 'allows a user to register' do
      visit new_user_registration_path
      #fill_in 'First name', :with => 'New'
      #fill_in 'Last name', :with => 'User'
      fill_in 'Email', :with => 'newuser@example.com'
      fill_in 'Password', :with => 'userpassword'
      fill_in 'Password Confirmation', :with => 'userpassword'
      click_button 'Register'
      page.should have content 'Welcome'
    end
  end

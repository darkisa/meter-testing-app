# Test authenticate user
Given /^(?:|I )am an authenticated user/ do
  email = 'test@example.com'
  password = 'password'
  User.new(:email => email, :password => password).save!
  
  visit('users/sign_in')
  fill_in 'user_email', :with => 'test@example.com'
  fill_in 'user_password', :with => 'password'
  click_button 'Login'
  
  page.should have_content('test@example.com')
end
module UserHelper

  def logut_user
    click_link 'Logout'
  end

  def login_user(user)
    visit '/'
    fill_in 'email', with: user.email
    fill_in 'password', with: 'Password'
    click_on('Login')
  end
end
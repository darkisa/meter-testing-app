module UserHelper

  def login_admin
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:admin]
      sign_in FactoryGirl.create(:admin) # Using factory bot as an example
    end
  end

  def login_user(user)
    visit '/'
    fill_in 'email', with: user.email
    fill_in 'password', with: 'Password'
    click_on('Login')
  end
end
module UserHelper

  def login_admin
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:admin]
      sign_in FactoryGirl.create(:admin) # Using factory bot as an example
    end
  end

  def login_user(user)
    visit login_path
    fill_in 'email', with: user.email
    fill_in 'password', with: 'Password'
    find_button('LOG IN').click
  end
end
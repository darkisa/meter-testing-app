require 'rails_helper'

RSpec.feature "Tasks", type: :feature do
  before do
    @user = create(:user)
    login_user(@user)
  end
  
  scenario 'User views his tasks' do
   
  end
end

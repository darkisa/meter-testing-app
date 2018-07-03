require 'rails_helper'

RSpec.feature "Tasks", type: :feature do
  before do
    create(:user, id: 2, email: 'joeschmo@gmail.com', first_name: 'Joe', last_name: 'Schmo')
    @user = create(:user)
    create(:task)
    login_user(@user)
  end
  
  scenario 'User views his tasks' do
   click_on(@user.email)
   click_on('All Tasks')

   expect(page).to have_content('Foo Bar')
  end
end

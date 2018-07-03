require 'rails_helper'

RSpec.feature "Tasks", type: :feature do
  before do
    create(:user, id: 2, email: 'joeschmo@gmail.com', first_name: 'Joe', last_name: 'Schmo')
    @user = create(:user)
    create(:task)
    login_user(@user)
  end
  
  scenario 'User views all tasks' do
   click_on(@user.email)
   click_on('All Tasks')

   expect(page).to have_content('Foo Bar')
  end

  scenario 'User views taks only belonging to him' do
    click_on(@user.email)
    click_on('All Tasks')

    expect(page).to have_content('Foo Bar')
  end
end

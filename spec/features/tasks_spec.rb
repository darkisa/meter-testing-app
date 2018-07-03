require 'rails_helper'

RSpec.feature "Tasks", type: :feature do
  before do
    create(:user, id: 2, email: 'joeschmo@gmail.com', first_name: 'Joe', last_name: 'Schmo')
    @user = create(:user)
    create(:task)
    login_user(@user)
    click_on(@user.email)
  end
  
  scenario 'User views all tasks' do
   click_on('All Tasks')

   expect(page).to have_content('Foo Bar')
  end

  scenario 'User views tasks only belonging to him' do
    click_on('All Tasks')

    expect(page).to have_content('Foo Bar')
  end

  scenario 'User creates a new task' do
    click_on('New Task')
    fill_in 'task_serial_no', with: '12345'
    fill_in 'task_account', with: '1-2345-6'
    find('#task_assigned_to').find(:xpath, 'option[1]').select_option
    click_on('Submit')

    expect(page).to have_content('Task created')
    expect(Task.all.size).to eq 2
  end
end

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
   click_on 'All Tasks'

   expect(page).to have_content('Foo Bar')
  end

  scenario 'User views tasks only belonging to him' do
    click_on 'All Tasks'

    expect(page).to have_content('Foo Bar')
  end

  scenario 'User creates a new task' do
    click_on 'New Task'
    fill_in 'task_serial_no', with: '12345'
    fill_in 'task_account', with: '1-2345-6'
    find('#task_assigned_to').find(:xpath, 'option[1]').select_option
    click_on 'Submit'

    expect(page).to have_content('Task created')
    expect(Task.all.size).to eq 2
  end

  scenario 'User updates a task' do
    click_on 'All Tasks'
    click_link 'Update'
    fill_in 'task_serial_no', with: 'updated task'
    click_on 'Update'

    expect(page).to have_content('Task has been updated')
    expect(page).to have_content('updated task')
  end

  scenario 'User deletes a task' do
    click_on 'All Tasks'
    click_link 'Delete'

    expect(Task.all.size).to eq 0
  end

  scenario 'A user assigns a task to someone else' do
    second_user = User.find(2)
    click_on 'All Tasks'
    click_link 'Update'
    find('#task_assigned_to').find(:xpath, 'option[1]').select_option
    click_on 'Update'
    view_my_tasks(@user)

    expect(page).to have_content('You have no assigned tasks')

    logut_user
    login_user(second_user)
    view_my_tasks(second_user)

    expect(page).to have_content('Joe Schmo')
  end
end

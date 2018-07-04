module TaskHelper
  
  def view_my_tasks(user)
    click_on(user.email)
    click_on 'My Tasks'
  end

end
class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
    @users = User.all
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      flash[:notice] = 'Task created'
      redirect_to '/'
    else
      flash[:notice] = @task.errors.full_messages
      render 'new'
    end
  end


private

  def task_params
    params.require(:task).permit!
  end

end

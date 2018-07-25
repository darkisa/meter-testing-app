class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
    @users = User.all
    @heading = 'New Task'

    render 'tasks/_task_form'
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to '/', :notice => 'Task created'
    else
      flash[:notice] = @task.errors.full_messages
      render 'new'
    end
  end

  def edit
    @task = Task.find(params[:id])
    @heading = 'Update Task'
    session[:previous] = request.referer

    render 'tasks/_task_form'
  end

  def update
    @task = Task.find(params[:id])
    @task.set_completed_on(params[:task][:completed])

    if @task.update(task_params)
      redirect_to session.delete(:previous), :notice => 'Task has been updated'
    else
      flash[:notice] = @task.errors
      render 'tasks/_task_form'
    end
  end

  def destroy
    @task = Task.find(params[:id])

    @task.destroy
    redirect_to tasks_path, :notice => 'Task has been deleted'
  end

  def my_tasks
    @tasks = current_user.tasks_received
    render 'index'
  end

private

  def task_params
    params.require(:task).permit!
  end

end

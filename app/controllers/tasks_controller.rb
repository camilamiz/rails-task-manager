class TasksController < ApplicationController
  # localhost:3000/tasks/new
  def new
    @task = Task.new
  end

  # localhost:3000/tasks/ (post)
  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path(@task)
  end

  # localhost:3000/tasks/
  def index
    @tasks = Task.all
  end

  # localhost:3000/tasks/:id
  def show
    @task = Task.find(params[:id])
  end

  # localhost:3000/tasks/:id/edit
  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end

class TasksController < ApplicationController
  #localhost:3000/tasks/ (post)
  def create
    task = Task.new(task_params)
    task.save
  end

  #localhost:3000/tasks/
  def index
    @tasks = Task.all
  end


end

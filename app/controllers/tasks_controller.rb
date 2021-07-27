class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new

  end

  def create
    task = Task.new(task_params)
    task.save!
    redirect_to task_path(task.id)
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end

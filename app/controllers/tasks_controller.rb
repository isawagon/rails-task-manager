class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end
  def show
    @task = Task.find(params[:id])
  end
  def new
    @task = Task.new
  end
  def create
    # Task.create(params[:task]) # remplacé ci-dessous pour securité
    Task.create(task_params)
    redirect_to tasks_path # ou redirect_to task_path(task)
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end

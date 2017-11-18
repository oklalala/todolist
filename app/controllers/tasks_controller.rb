class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task1 = Task.new(task_params)
    @task1.save

    redirect_to tasks_url
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit 
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update_attributes(task_params)

    redirect_to task_path(@task)
  end

  def destroy
    @task = Photo.find(params[:id])
    @task.destroy

    redirect_to tasks_url

  end


  private

  def task_params
    params.require(:task).permit(:name, :date, :note)
  end

  


end
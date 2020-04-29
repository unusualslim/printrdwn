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
 
  def edit
    @task = Task.find(params[:id])
  end
 
  def create
    @task = Task.new(task_params)
    if @task.save
#      TaskMailer.with(task: @task).new_case_email.deliver_now
      redirect_to @task
    else
      render 'new'
    end
  end
 
  def update
    @task = Task.find(params[:id])
 
    if @task.update(task_params)
#      TaskMailer.with(task: @task).update_case_email.deliver_now   
      redirect_to @task
    else
      render 'edit'
    end
  end
 
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
 
    redirect_to tasks_path
  end
 
  private
    def task_params
      params.require(:task).permit(:subject, :asset_ids,  :status_id, :user_id, :description, :severity_id, :task_list_id , :location_ids => [], files: [])
    end
end

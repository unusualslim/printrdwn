class TaskListsController < ApplicationController
def index
    @task_lists = TaskList.all
#   @task_lists = TaskList.where(user_id: current_user.id).or(TaskList.where(public: 1))
 end

 def show
   @task_list = TaskList.find(params[:id])
   @task_list_tasks = Task.where(task_list_id: @task_list.id)
 end

 def new
   @task_list = TaskList.new
 end

 def edit
   @task_list = TaskList.find(params[:id])
 end

 def create
   @task_list = TaskList.new(task_list_params)

   if @task_list.save
     redirect_to @task_list
   else
     render 'new'
   end
 end

 def update
   @task_list = TaskList.find(params[:id])

   if @task_list.update(task_list_params)
     redirect_to @task_list
   else
     render 'edit'
   end
 end

 def destroy
   @task_list = TaskList.find(params[:id])
   @task_list.destroy

   redirect_to task_lists_path
 end

 private
   def task_list_params
     params.require(:task_list).permit(:name, :user_id, :team_id)
   end

end

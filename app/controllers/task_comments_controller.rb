class TaskCommentsController < ApplicationController
  def create
    @task = Task.find(params[:task_id])
    @task_comment = @task.task_comments.create(task_comment_params)
    # TaskMailer.with(task: @task).update_task_email.deliver_now
    redirect_to task_path(@task)
  end

  private
    def task_comment_params
      params.require(:task_comment).permit(:user_id, :body)
    end
end

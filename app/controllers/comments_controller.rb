class CommentsController < ApplicationController
  def create
    @task = Task.find(params[:task_id])
    @comment = @task.comments.create(comment_params)
    # TaskMailer.with(task: @task).update_task_email.deliver_now
    redirect_to task_path(@task)
  end

  private
    def comment_params
      params.require(:comment).permit(:user_id, :body)
    end
end

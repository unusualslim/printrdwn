class CommentsController < ApplicationController
  def create
    @support_case = SupportCase.find(params[:support_case_id])
    @comment = @support_case.comments.create(comment_params)
    SupportCaseMailer.with(support_case: @support_case).update_case_email.deliver_now
    redirect_to support_case_path(@support_case)
  end

  private
    def comment_params
      params.require(:comment).permit(:user_id, :body)
    end
end

class SupportCasesController < ApplicationController

  def index
    @support_cases_open = SupportCase.order(:id).where(status_id: [1,3])
    @support_cases_closed = SupportCase.order(:id).where(status_id: '2')
  end
  def show
    @support_case = SupportCase.find(params[:id]) 
  end
 
  def new
    @support_case = SupportCase.new
  end
 
  def edit
    @support_case = SupportCase.find(params[:id])
  end
 
  def create
    @support_case = SupportCase.new(support_case_params)
 
    if @support_case.save
      SupportCaseMailer.with(support_case: @support_case).new_case_email.deliver_now
      redirect_to @support_case
    else
      render 'new'
    end
  end
 
  def update
    @support_case = SupportCase.find(params[:id])
 
    if @support_case.update(support_case_params)
      SupportCaseMailer.with(support_case: @support_case).update_case_email.deliver_now   
      redirect_to @support_case
    else
      render 'edit'
    end
  end
 
  def destroy
    @support_case = SupportCase.find(params[:id])
    @support_case.destroy
 
    redirect_to support_cases_path
  end
 
  private
    def support_case_params
      params.require(:support_case).permit(:subject, :location_id, :asset_id,  :status_id, :user_id, :description, :severity_id)
    end
end

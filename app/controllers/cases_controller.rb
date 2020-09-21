class CasesController < ApplicationController
  def index
    @cases = Case.all
  end
  def show
    @case = Case.find(params[:id]) 
  end
 
  def new
    @case = Case.new
  end
 
  def edit
    @case = Case.find(params[:id])
  end
 
  def create
    @case = Case.new(case_params)
    if @case.save
      CaseMailer.new_case_email(@case).deliver_later
      redirect_to @case
    else
      render 'new'
    end
  end
 
  def update
    @case = Case.find(params[:id])
 
    if @case.update(case_params)
      CaseMailer.update_case_email(@case).deliver_later   
      redirect_to @case
    else
      render 'edit'
    end
  end
 
  def destroy
    @case = Case.find(params[:id])
    @case.destroy
 
    redirect_to cases_path
  end
 
  private
    def case_params
      params.require(:case).permit(:subject, :status_id, :requested_by_id, :assigned_to_id, :description, :severity_id, :location_ids => [], files: [])
    end


end

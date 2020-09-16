class CaseLocationsController < ApplicationController
  def create
    @case_location = @case.case_locations.create(case_location_params)
    redirect_to @case
  end

  private
    def case_location_params
      params.require(:case_location).permit(:case_id,location_id)
    end

end

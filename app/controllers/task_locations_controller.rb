class TaskLocationsController < ApplicationController
  def create
    @task = Task.find(params[:asset_id])
    @task_location = @task.task_locations.create(task_location_params)
    redirect_to @task
  end

  private
    def task_location_params
      params.require(:task_location).permit(:task_id,location_id)
    end
end

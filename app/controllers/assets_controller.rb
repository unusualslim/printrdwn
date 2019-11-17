class AssetsController < ApplicationController
  def index
    @assets = Asset.all
  end
  
  def show
    @asset = Asset.find(params[:id])
  end

  def create
    @location = Location.find(params[:location_id])
    @asset = @location.assets.create(asset_params)
    redirect_to location_path(@location)    
  end

  def destroy
    @location = Location.find(params[:location_id])
    @asset = @location.assets.find(params[:id])
    @asset.destroy
    redirect_to location_path(@location)
  end

  private
    def asset_params
      params.require(:asset).permit( :location_id, :equipment_id)
    end
end

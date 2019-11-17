class TaggingsController < ApplicationController
  def create
    @asset = Asset.find(params[:asset_id])
    @tagging = @asset.taggings.create(tagging_params)
    redirect_to @asset
  end

  private 
    def tagging_params
      params.require(:tagging).permit(:asset_id, :tag_id, :value)
    end
end

class ThingsController < ApplicationController


  def index
    @things = Thing.all
  end

  def show
    @thing = Thing.find(params[:id])
  end

  def new
    @thing = Thing.new
  end

  def edit
    @thing = Thing.find(params[:id])
  end

  def create
    @thing = Thing.new(thing_params)

    if @thing.save
      redirect_to action: "index"
    else
      render 'new'
    end
  end

  def update
    @thing = Thing.find(params[:id])

    if @thing.update(thing_params)
      redirect_to action: "index"
    else
      render 'edit'
    end
  end

  def destroy
    @thing = Thing.find(params[:id])
    @thing.destroy
  
    redirect_to things_path
  end
  
#  def change_filename
#    attachment = ActiveStorage::Attachment.find(attachment_id)
#    attachment.blob.update!(filename: 'new_filename.pdf')
#  end

  private
    def thing_params
      params.require(:thing).permit(:user_id, files: [] )
    end
  end

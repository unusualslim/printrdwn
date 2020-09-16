class Admin::EquipmentController < ApplicationController
  def index
    @equipments = Equipment.all
  end
 
  def show
    @equipment = Equipment.find(params[:id])
  end
 
  def new
    @equipment = Equipment.new
  end
 
  def edit
    @equipment = Equipment.find(params[:id])
  end
 
  def create
    @equipment = Equipment.new(equipment_params)
 
    if @equipment.save
      redirect_to [:admin, @equipment]
    else
      render 'new'
    end
  end
 
  def update
    @equipment = Equipment.find(params[:id])
 
    if @equipment.update(equipment_params)
      redirect_to [:admin, @equipment]
    else
      render 'edit'
    end
  end
 
  def destroy
    @equipment = Equipment.find(params[:id])
    @equipment.destroy
 
    redirect_to admin_equipment_index_path
  end
 
  private
    def equipment_params
      params.require(:equipment).permit(:model, :manufacturer_id)
    end
end

class EquipmentController < ApplicationController
  before_action :set_equipment, only: [:show]

  def index
    @equipment = Equipment.all
  end

  def show
  end

  private

  def equipment_params
    params.require(:equipment).permit(:date, :rationale)
  end

  def set_equipment
    @equipment = Equipment.find(params[:id])
  end
end

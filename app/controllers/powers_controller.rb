class PowersController < ApplicationController
  before_action :get_power, only: [:show]
  def index
    @powers = Power.all
  end
  def new
    @power = Power.new
  end

  # def show
  #   @power = Power.find(params[:id])
  # end
  # 
  # def create
  #   @power = Power.create(power_params)
  #   if @power.valid?
  #     redirect_to @power
  #   else
  #     render :new
  #   end
  # end


  private

  def get_power
    @power = Power.find(params[:id])
  end

  def power_params
    params.require(:power).permit(:name, :description)
  end
end

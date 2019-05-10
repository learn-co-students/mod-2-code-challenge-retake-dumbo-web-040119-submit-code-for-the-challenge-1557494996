class HeroinesController < ApplicationController

  def index
    @heroines = Heroine.all
  end

  def show
@heroine = Heroine.find(params[:id])

  end

  def new
    @heroine = Heroine.new(h_params)
  end


def create
@heroine = Heroine.create(h_parmas)
@power = Power.find(@heroine.power_id)
if @heroine.valid?
  redirect_to @power
end


end

private

def h_parmas
  params.require(:heroine).permit(:name, :super_name, :power_id)
end


end

class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  #Search Bar Bonus Task Trial and Error
  # def index
  #   @heroines = if params[:name]
  #   Powers.where('name LIKE ?', "%#{params[:name]}%")
  #   else
  #   @heroines = Heroine.all
  #   end
  # end


  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroines_param)
    if @heroine.save
      redirect_to heroine_path(@heroine)
    else
      render :new
    end
  end

  private

  def heroines_param
    params.require(:heroine).permit(:name,:super_name,:power_id)
  end
end

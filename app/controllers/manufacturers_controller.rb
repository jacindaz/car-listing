class ManufacturersController < ApplicationController

  def index
    @manufacturers = Manufacturer.all
  end

  def show
    @manufacturer = Manufacturer.find(params[:id])
  end

  def new
    @manufacturer = Manufacturer.new
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)

    if @manufacturer.save
      flash[:notice] = "Your manufacturer has been saved."
      redirect_to manufacturer_path(@manufacturer)
    else
      flash[:notice] = "Manufacturer couldn't be saved."
      render :'manufacturers/index'
  end

  private
  def manufacturer_params
    params.require(:manufacturer).permit(:name, :country)
  end
end

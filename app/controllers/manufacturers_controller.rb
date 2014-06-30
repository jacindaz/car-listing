class ManufacturersController < ApplicationController

  def index
    @manufacturers = Manufacturer.all
  end

  def show
    @manufacturer = Manufacturer.find(params[:id])
    @cars = Car.where(manufacturer_id: @manufacturer.id)
    @car = Car.new
    @car.manufacturer = @manufacturer
  end

  def new
    @manufacturer = Manufacturer.new
    @countries = Manufacturer::COUNTRIES
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)

    if @manufacturer.save
      flash[:notice] = "Your manufacturer has been saved."
      redirect_to manufacturer_path(@manufacturer)
    else
      flash[:notice] = "Manufacturer couldn't be saved."
      redirect_to manufacturers_path
    end
  end

  private
  def manufacturer_params
    params.require(:manufacturer).permit(:name, :country)
  end
end

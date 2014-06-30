class CarsController < ApplicationController

  def index
    @cars = Car.all
    @manufacturers = Manufacturer.all
    @title = "Much Cars"
  end

  def show
    @car = Car.find(params[:id])
    @title = "About this Fabulous Car"
  end

  def new
    @manufacturer = Manufacturer.new
    @car = Car.new
    @title = "Submit a New Car"
  end

  def create
    binding.pry
    @car = Car.new(car_params)
    @manufacturer = Manufacturer.find(params[:manufacturer_id])
    @car.manufacturer = @manufacturer

    if @car.save
      flash[:notice] = "Car much submitted."
      redirect_to car_path(@car)
    else
      flash[:notice] = "Much sorry, car very unsaveable."
      render :'manufacturers/show'
    end
  end

  private
  def car_params
    params.require(:car).permit(:manufacturer_id, :color, :year, :mileage, :description)
  end

end

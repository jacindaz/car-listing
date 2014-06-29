class CarsController < ApplicationController

  def index
    @cars = Car.all
    @title = "So many Cars"
  end

  def show
    @car = Car.find(params[:id])
    @title = "About this Fabulous Car"
  end

  def new
    @manufacturer = Manufacturer.new



    @manufacturer_names = []

    Manufacturer.all.each do |manufac|
      @manufacturer_names << manufac.name
    end

    @car = Car.new
    @title = "Submit a New Car"
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      flash[:notice] = "Car much submitted."
      redirect_to car_path(@car)
    else
      flash[:notice] = "Much sorry, car very unsaveable."
      render :'cars/new'
    end
  end

  private
  def car_params
    params.require(:car).permit(:manufacturer_id, :color, :year, :mileage, :description)
  end

end

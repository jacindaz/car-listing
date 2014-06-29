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
    @car = Car.new
  end

  def create
    @car = Car.find(params[:id])

    if @car.save
      flash[:notice] = "Car much submitted."
      redirect_to car_path(@car)
    else
      flash[:notice] = "Much sorry, car very unsaveable."
      render :'cars/new'
    end
  end

end

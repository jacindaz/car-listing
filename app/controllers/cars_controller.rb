class CarsController < ApplicationController

  def index
    @cars = Car.all
    @title = "Welcome to the Awesomest Cars Listing Site Ever"
  end

  def show
  end

  def new
  end

  def create
  end

end

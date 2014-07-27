class CarsController < ApplicationController
  # GET /cars
  # GET /cars.json

  def index
    @cars = Car.all

    render json: @cars
  end

  # GET /cars/1
  # GET /cars/1.json
  def show
    @car = Car.find(params[:id])

    render json: @car
  end

  # POST /cars
  # POST /cars.json
  def create
    @car = Car.new(:name => params[:name])

    if @car.save
      render json: @car, status: :created, location: @car
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cars/1
  # PATCH/PUT /cars/1.json
  def update
    @car = Car.find(params[:id])

    if @car.update(params[:car])
      head :no_content
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    @car = Car.find(params[:id])
    @car.destroy

    head :no_content
  end
end

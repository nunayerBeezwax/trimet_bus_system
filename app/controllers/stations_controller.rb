class StationsController < ApplicationController
  def index
    @stations = Station.all
  end

  def new
    @station = Station.new
  end

  def create
    @station = Station.create(params[:station])
    flash[:notice] = "#{@station.name} has been added"
    redirect_to "/stations/"
  end

  def show
    @station = Station.find(params[:id])
  end

  def edit
    @station = Station.find(params[:id])
  end

  def update
    @station = Station.find(params[:id])
    @station.update(params[:station])
    flash[:notice] = "#{@station.name} Updated"
    redirect_to "/stations"

  end

  def destroy
    @station = Station.find(params[:id])
    @station.destroy
    flash[:notice] = "#{@station.name} has been Removed"
    redirect_to "/"
  end
end

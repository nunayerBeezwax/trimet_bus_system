class BusesController < ApplicationController

  def new
    @bus = Bus.new
    @lines = Line.all
  end

  def create
    @bus = Bus.create(params[:bus])
    flash[:notice] = "#{@bus.name} has been added"
    redirect_to "/"
  end

  def show
    @bus = Bus.find(params[:id])
  end

  def edit
    @bus = Bus.find(params[:id])
    @lines = Line.all
  end

  def update
    @bus = Bus.find(params[:id])
    @bus.update(params[:bus])
    flash[:notice] = "#{@bus.name} Updated"
    redirect_to "/"

  end

  def destroy
    @bus = Bus.find(params[:id])
    @bus.destroy
    flash[:notice] = "#{@bus.name} has been Removed"
    redirect_to "/buses"
  end
end


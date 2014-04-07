class LinesController < ApplicationController
  def index
    @lines = Line.all
  end

  def new
    @line = Line.new
    @stations = Station.all
  end

  def create
    @line = Line.create(params[:line])
    params[:station_ids].each do |station_id|
      Stop.create({:line_id => @line.id, :station_id => station_id})
    end
    flash[:notice] = "#{@line.name} has been added"
    redirect_to "/lines/"
  end

  def show
    @line = Line.find(params[:id])
  end

  def edit
    @line = Line.find(params[:id])
    @stations = Station.all
  end

  def update
    @line = Line.find(params[:id])
    params[:station_ids].each do |station_id|
      Stop.create({:line_id => @line.id, :station_id => station_id})
    end
    @line.update(params[:line])
    flash[:notice] = "#{@line.name} Updated"
    redirect_to "/lines"

  end

  def destroy
    @line = Line.find(params[:id])
    @line.destroy
    flash[:notice] = "#{@line.name} has been Removed"
    redirect_to "/lines"
  end
end


class ArrivalsController < ApplicationController

  def new
    @arrival = Arrival.new
    @bus = Bus.find(params[:bus_id])
  end

  def create
    i = 0
    params[:arrival][:time].count.times do
      Arrival.create(:bus_id => params[:arrival][:bus_id], :stop_id => params[:arrival][:stop_id][i], :time => params[:arrival][:time][i])
      i += 1
    end
    redirect_to "/"
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


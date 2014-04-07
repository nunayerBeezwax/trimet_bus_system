class LinesController < ApplicationController
  def index
    @lines = Line.all
  end

  def new
    @line = Line.new
  end

  def create
    @line = Line.create(params[:Line])
    flash[:notice] = "#{@line.name} has been added"
    redirect_to "/lines/"
  end

  def show
    @line = Line.find(params[:id])
  end

  def edit
    @line = Line.find(params[:id])
  end

  def update
    @line = Line.find(params[:id])
    @line.update(params[:Line])
    flash[:notice] = "#{@line.name} Updated"
    redirect_to "/lines"

  end

  def destroy
    @line = Line.find(params[:id])
    @line.destroy
    flash[:notice] = "#{@line.name} has been Removed"
    redirect_to "/"
  end
end


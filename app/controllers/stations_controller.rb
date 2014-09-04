class StationsController < ApplicationController

  def index
    @stations = Station.all
    @lines = Line.all
    @stops = Stop.all
    render('/homepages/index')
  end


  def new
    @station = Station.new
    @lines = Line.all
  end

  def edit
    @station = Station.find(params[:id])
    @lines = Line.all
  end

  def update
    @station = Station.update(params[:id], station_params)
    if @station.valid?
      flash[:notice] = "Station updated"
      redirect_to station_path
    else
      render 'edit'
    end
  end

  def create
    @station = Station.create(station_params)
    if @station.valid?
      flash[:notice] = "Station creATED"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @station = Station.find(params[:id])
  end

private
  def station_params
    params.require(:station).permit(:name, line_ids: [])
  end

end

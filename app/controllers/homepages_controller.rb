class HomepagesController < ApplicationController

  def index
    @stations = Station.all
    @lines = Line.all
    @stops = Stop.all
  end

end

class SearchController < ApplicationController 
  def index
    @stations = GetStationsInfoService.new.perform(params[:q])
  end
end
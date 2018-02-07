class SearchController < ApplicationController 
  def index
    @stations = GetStationInfoService.new.perform(params[:q])
  end
end
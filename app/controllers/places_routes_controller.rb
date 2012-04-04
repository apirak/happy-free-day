class PlacesRoutesController < ApplicationController
  def index
  end
  def create
    s = params[:string]
    s = s.split(',')
    route = params[:route]
    Route.find(route).places_routes.each do |a|
    	a.destroy
    end
    s.each_with_index do |pid,index|
    	    @places_route = PlacesRoute.new(:place_id=>pid,:route_id=>route,:sequence=>index)
    		@places_route.save
    end
    redirect_to admin_route_path(route)
  end
end

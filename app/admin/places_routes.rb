ActiveAdmin.register PlacesRoute do
	index do
		column :place_id
		column :route_id
		column :x
		column :y
		column "More Detail" do |pr|
			link_to "show", admin_places_route_path(pr)
		end
	end
end

ActiveAdmin.register Route do
	index do
		column "Title" do |route|
			link_to route.title, admin_route_path(route)
		end
		column :sequence
		#render "routes"
	end
	show :title => "Route Manager" do |route|
		render "places_in_route"
	end
	form do |f|
		f.inputs "Details" do
			f.input :title
			f.input :sequence
		end
		f.inputs "Photo" do
			f.file_field :photo
		end
		f.buttons
	end
	#form :partial => "form"
end

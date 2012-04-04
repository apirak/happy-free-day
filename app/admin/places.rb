ActiveAdmin.register Place do
  
  index do
		column "Title" do |place|
			link_to place.title, admin_place_path(place)
		end
		column :content
		column :lat
		column :long
		column :tag
		column :vote
	end
	show :title => "Place Manager" do |place|
		render "place"
	end
	form do |f|
		f.inputs "Details" do
			f.input :title
			f.input :content
			f.input :lat
			f.input :long
			f.input :tag
			f.input :vote
		end
		f.inputs "Photo" do
			f.file_field :photo
		end
		f.buttons
	end
	#form :partial => "form"
end

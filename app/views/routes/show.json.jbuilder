

r = @route
pr = []
r.places.each do |p|
	pr.append PlacesRoute.find_by_place_id(p.id)
end

pr.sort! { |a,b| a[:sequence] <=> b[:sequence] }

arr = []
pr.each do |epr|
	arr.append epr.place
end

json.(@route, :title,:sequence)
json.places arr, :title, :content, :picture, :lat, :long, :tag, :vote
json.(@route, :title,:sequence)
json.places @route.places.order('"places_routes"."sequence"').all, :id, :title, :content, :picture, :lat, :long, :tag, :vote
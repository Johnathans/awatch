json.array!(@ufo_sightings) do |ufo_sighting|
  json.extract! ufo_sighting, :id, :address, :craft, :details, :latitude, :longitude
  json.url ufo_sighting_url(ufo_sighting, format: :json)
end

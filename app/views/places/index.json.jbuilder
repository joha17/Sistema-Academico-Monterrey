json.array!(@places) do |place|
  json.extract! place, :id, :NomPlace
  json.url place_url(place, format: :json)
end

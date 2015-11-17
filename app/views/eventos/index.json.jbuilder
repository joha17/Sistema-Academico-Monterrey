json.array!(@eventos) do |evento|
  json.extract! evento, :id, :LugEven, :FechEven
  json.url evento_url(evento, format: :json)
end

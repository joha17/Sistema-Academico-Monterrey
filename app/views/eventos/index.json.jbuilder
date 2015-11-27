json.array!(@eventos) do |evento|
  json.extract! evento, :id, :NomEven, :DesEven, :FecEvent, :user_id
  json.url evento_url(evento, format: :json)
end

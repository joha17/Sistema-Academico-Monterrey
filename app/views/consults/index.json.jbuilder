json.array!(@consults) do |consult|
  json.extract! consult, :id, :NomConsulta, :DesConsulta, :user_id
  json.url consult_url(consult, format: :json)
end

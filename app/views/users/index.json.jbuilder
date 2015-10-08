json.array!(@users) do |user|
  json.extract! user, :id, :nombre, :apellido, :email
  json.url user_url(user, format: :json)
end

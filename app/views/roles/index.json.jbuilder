json.array!(@roles) do |role|
  json.extract! role, :id, :nomRole, :user_id
  json.url role_url(role, format: :json)
end

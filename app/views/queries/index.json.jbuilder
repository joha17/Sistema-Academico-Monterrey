json.array!(@queries) do |query|
  json.extract! query, :id, :NomCon, :DesCon, :FecCon, :user_id, :query_state_id
  json.url query_url(query, format: :json)
end

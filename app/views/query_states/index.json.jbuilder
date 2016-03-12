json.array!(@query_states) do |query_state|
  json.extract! query_state, :id, :DesCon
  json.url query_state_url(query_state, format: :json)
end

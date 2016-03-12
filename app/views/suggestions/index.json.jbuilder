json.array!(@suggestions) do |suggestion|
  json.extract! suggestion, :id, :AutSug, :LibSug, :CantSug, :user_id
  json.url suggestion_url(suggestion, format: :json)
end

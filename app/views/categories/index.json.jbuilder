json.array!(@categories) do |category|
  json.extract! category, :id, :nomCategory, :desCategory
  json.url category_url(category, format: :json)
end

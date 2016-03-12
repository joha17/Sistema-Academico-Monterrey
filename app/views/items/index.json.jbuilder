json.array!(@items) do |item|
  json.extract! item, :id, :nomItem, :desItem, :user_id, :place_id, :category_id
  json.url item_url(item, format: :json)
end

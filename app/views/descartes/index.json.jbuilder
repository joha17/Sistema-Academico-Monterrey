json.array!(@descartes) do |descarte|
  json.extract! descarte, :id, :obserDesc, :fechaDesc, :user_id, :signatura_id, :libro_id
  json.url descarte_url(descarte, format: :json)
end

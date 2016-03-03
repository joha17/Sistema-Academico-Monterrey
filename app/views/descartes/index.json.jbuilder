json.array!(@descartes) do |descarte|
  json.extract! descarte, :id, :ObsDesc, :CantLibDesc, :user_id, :libro_id, :signatura_id
  json.url descarte_url(descarte, format: :json)
end

json.array!(@signaturas) do |signatura|
  json.extract! signatura, :id, :nomSig
  json.url signatura_url(signatura, format: :json)
end

json.array!(@prestamo_estados) do |prestamo_estado|
  json.extract! prestamo_estado, :id, :nomEstPres, :desEstPres
  json.url prestamo_estado_url(prestamo_estado, format: :json)
end

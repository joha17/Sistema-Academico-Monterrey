json.array!(@prestamos) do |prestamo|
  json.extract! prestamo, :id, :fecSol, :fecDev, :user_id, :libro_id, :prestamo_estado_id
  json.url prestamo_url(prestamo, format: :json)
end

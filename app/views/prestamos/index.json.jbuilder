json.array!(@prestamos) do |prestamo|
  json.extract! prestamo, :id, :i_FK_lib, :CedUs, :FecSol, :FecDev, :FecPre, :i_FK_Prestamo
  json.url prestamo_url(prestamo, format: :json)
end

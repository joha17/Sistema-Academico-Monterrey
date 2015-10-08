json.array!(@libros) do |libro|
  json.extract! libro, :id, :NumCodLib, :fecLib, :AutLib
  json.url libro_url(libro, format: :json)
end

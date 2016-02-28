json.array!(@libros) do |libro|
  json.extract! libro, :id, :TitLib, :AutLib, :EdicLib, :AnioLib, :FecLib, :LugLib, :ObsLib, :DesLib, :CantLib, :Disp, :CodDewLib, :editorial_id
  json.url libro_url(libro, format: :json)
end

json.array!(@libros) do |libro|
  json.extract! libro, :id, :NomLib, :fecLib, :AutLib, :TitLib, :EdiLib, :LugLib, :id_edi, :anioLib, :ObsLib, :Deslib, :CantLib, :DisLib, :CodDewLib
  json.url libro_url(libro, format: :json)
end

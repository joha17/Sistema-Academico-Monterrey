class PrestamoPdf < Prawn::Document
	def initialize(prestamo)
		super(top_margin: 70)
		@prestamo = prestamo
		id
		signatura
		biblioteca
		autor
		titulo
		numInsc
		fecha
		vence
		seccion
		nombre
		firma
	end

	def id
		text "Prestamo \##{@prestamo.id}", size: 30, style: :bold
	end

	def signatura
		text "Signatura: #{@prestamo.signatura.nomSig}", style: :bold
	end

	def biblioteca
		text "Biblioteca: #{@prestamo.biblioteca}", style: :bold
	end

	def autor
		text "Autor: #{@prestamo.libro.AutLib}"
	end

	def titulo
		text "Titulo: #{@prestamo.libro.TitLib}"
	end

	def numInsc
		text "No Inscripcion: #{@prestamo.libro.numInsc}"
	end

	def fecha
		text "Fecha: #{@prestamo.fecSol}"
	end

	def vence
		text "Vence: #{@prestamo.fecDev}"
	end

	def seccion
		text "Seccion: #{@prestamo.seccion}"
	end

	def nombre
		text "Nombre: #{@prestamo.nomSolic}"
	end

	def firma
		text "Firma"
	end

end
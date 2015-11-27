class PrestamoPdf < Prawn::Document
	def initialize(prestamo)
		super(top_margin: 70)
		@prestamo = prestamo
		id
		autor
		titulo
		columna
		columna2
		nombre
		firma
		
	end

	def id
		text "Prestamo \##{@prestamo.id}", size: 30, style: :bold
	end

	def signatura
		move_down 20
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
		move_down 40
		stroke_horizontal_rule
		  pad_top(20){
		  text "Firma Interesado(a)"}
	end

	def columna
		define_grid(:columns => 5, :rows => 6, :gutter => 10) 

		grid([3,0], [1,1]).bounding_box do 
		  
	
		  text "Signatura: #{@prestamo.signatura.nomSig}", style: :bold
		end

		grid([2,3], [1,2]).bounding_box do 
		  
		  text "Biblioteca: #{@prestamo.biblioteca}", style: :bold
		  
		end
	end

	def columna2
		define_grid(:columns => 5, :rows => 6, :gutter => 10) 

		grid([3,0], [2,2]).bounding_box do 
		  
	
		  text "No Inscripcion: #{@prestamo.libro.numInsc}"
		  text "Vence: #{@prestamo.fecDev}"
		end

		grid([2,3], [2,2]).bounding_box do 
		  
		  text "Fecha: #{@prestamo.fecSol}"
		  text "Seccion: #{@prestamo.seccion}"
		  
		end
	end

end
class CarnetPdf < Prawn::Document
	def initialize(user)
		super(top_margin: 70)
		@user = user
		titulo
		nombre
		carne
		column
		firma
		info
		
	end
	def titulo
		text "Centro Educativo",size: 20, style: :bold
	end

	def nombre
		 text "Nombre: #{@user.NomUs + @user.ApUnoUs + @user.ApDosUs }"
	end

	def carne
		text "No Carnet: #{@user.CedUs}"
	end

	def column
		
		define_grid(:columns => 5, :rows => 1, :gutter => 5) 

		grid([0,0], [1,7]).bounding_box do 
		  
		  move_down 70
		  
		  text "Seccion: #{@user.SecUs}"
		text "Valido: #{@user.dt_ingUs.strftime("%d/%m/%Y")}"
		end

		grid([1,2], [0,1]).bounding_box do 
		  
		  # Company address
		  move_down 70
		  text "Telefono: #{@user.TelUs}", :align => :left
		  text "Valido: #{@user.dt_salUs.strftime("%d/%m/%Y")}", :align => :left
		  
		end
	end

	def info
		text "Para:",size: 40, style: :bold
		text "a) Identificarse como usuario", :align => :center
		text "b) Participar de actividades culturales", :align => :center
		text "c) Utilizar el servicio de biblioteca", :align => :center

		define_grid(:columns => 5, :rows => 6, :gutter => 10) 

		grid([3,0], [1,1]).bounding_box do 
		  
		  move_down 40
		  stroke_horizontal_rule
		  pad_top(20){
		  text "Firma Interesado(a)"}
		end

		grid([2,3], [1,2]).bounding_box do 
		  
		  # Company address
		  move_down 40
		  stroke_horizontal_rule
		  pad_top(20){
		  text "Firma Bibliotecologo(a)", :align => :left}
		  
		end
	end


	def firma
		
	end

	


end
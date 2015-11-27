class CarnetPdf < Prawn::Document
	def initialize(user)
		super(top_margin: 100)
		@user = user
		titulo
		nombre
		carnetNum
		seccion
		telefono
		valido
		hasta
		firmaEst
		firmaAdmin
		
	end

	def titulo
		text "Centro Educativo", size: 30, stylr: :bold, :align => :center
	end

	def nombre
		move_down 40
		text "Nombre: #{@user.NomUs + @user.ApUnoUs + @user.ApDosUs }"
	end

	def carnetNum
		text "No Carnet: #{@user.CedUs}"
	end

	def seccion
		text "Seccion: #{@user.SecUs}"
	end

	def telefono
		text "Telefono: #{@user.TelUs}", :align => :right
	end

	def valido
		text "Valido desde: #{@user.dt_ingUs.strftime("%d/%m/%Y")}"
	end

	def hasta
		text "Hasta: #{@user.dt_salUs.strftime("%d/%m/%Y")}", :align => :right
	end

	def firmaEst
		move_down 20
		stroke_horizontal_rule
		pad_top(20) { text "Firma interesado(a)" }
	end

	def firmaAdmin
		text "Firma Bibliotecologo(a)", :align => :right
	end


end
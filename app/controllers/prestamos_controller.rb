class PrestamosController < ApplicationController
  before_action :set_prestamo, only: [:show, :edit, :update, :destroy]
  autocomplete :libro, :TitLib

  # GET /prestamos
  # GET /prestamos.json
  def index
    @prestamos = Prestamo.all
  end

  # GET /prestamos/1
  # GET /prestamos/1.json
  def show
    @prestamo = Prestamo.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        pdf = PrestamoPdf.new(@prestamo)
        send_data pdf.render, filename: "prestamo_#{@prestamo.id}.pdf",
        type: "application/pdf",
        disposition: "inline"
      end
    end
  end

  # GET /prestamos/new
  def new
    @prestamo = Prestamo.new
  end

  # GET /prestamos/1/edit
  def edit
  end

  # POST /prestamos
  # POST /prestamos.json
  def create
    @prestamo = Prestamo.new(prestamo_params)
    @prestamo.fecDev = Time.now + 6.days
    @prestamo.prestamo_estado_id = 1
    @prestamo.user = current_user

    respond_to do |format|
      if @prestamo.save
        format.html { redirect_to @prestamo, notice: 'El prestamo se ha creado satisfacatoriamente.' }
        format.json { render :show, status: :created, location: @prestamo }
      else
        format.html { render :new }
        format.json { render json: @prestamo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prestamos/1
  # PATCH/PUT /prestamos/1.json
  def update
    respond_to do |format|
      if @prestamo.update(prestamo_params)
        format.html { redirect_to @prestamo, notice: 'El prestamo se ha editado satisfacatoriamente.' }
        format.json { render :show, status: :ok, location: @prestamo }
      else
        format.html { render :edit }
        format.json { render json: @prestamo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prestamos/1
  # DELETE /prestamos/1.json
  def destroy
    @prestamo.destroy
    respond_to do |format|
      format.html { redirect_to prestamos_url, notice: 'El prestamo se ha eliminado satisfacatoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prestamo
      @prestamo = Prestamo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prestamo_params
      params.require(:prestamo).permit(:fecSol, :fecDev, :user_id, :libro_id, :prestamo_estado_id, :signatura_id, :seccion, :biblioteca, :nomSolic, :telSolic, :nomDocente)
    end
end

class PrestamosController < ApplicationController
  before_action :set_prestamo, only: [:show, :edit, :update, :destroy]

  # GET /prestamos
  # GET /prestamos.json
  def index
    @prestamos = Prestamo.all
  end

  # GET /prestamos/1
  # GET /prestamos/1.json
  def show
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

    respond_to do |format|
      if @prestamo.save
        format.html { redirect_to @prestamo, notice: 'Prestamo was successfully created.' }
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
        format.html { redirect_to @prestamo, notice: 'Prestamo was successfully updated.' }
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
      format.html { redirect_to prestamos_url, notice: 'Prestamo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

   def remove_libro_cant
    @cantidad = :CantLib
    @dispo = :DisLib
    @cantidad = @cantidad - @dispo
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prestamo
      @prestamo = Prestamo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prestamo_params
      params.require(:prestamo).permit(:i_FK_lib, :CedUs, :FecSol, :FecDev, :FecPre, :i_FK_Prestamo)
    end
end

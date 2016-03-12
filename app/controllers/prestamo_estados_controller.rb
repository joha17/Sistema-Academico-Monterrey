class PrestamoEstadosController < ApplicationController
  before_action :set_prestamo_estado, only: [:show, :edit, :update, :destroy]

  # GET /prestamo_estados
  # GET /prestamo_estados.json
  def index
    @prestamo_estados = PrestamoEstado.all
  end

  # GET /prestamo_estados/1
  # GET /prestamo_estados/1.json
  def show
  end

  # GET /prestamo_estados/new
  def new
    @prestamo_estado = PrestamoEstado.new
  end

  # GET /prestamo_estados/1/edit
  def edit
  end

  # POST /prestamo_estados
  # POST /prestamo_estados.json
  def create
    @prestamo_estado = PrestamoEstado.new(prestamo_estado_params)

    respond_to do |format|
      if @prestamo_estado.save
        format.html { redirect_to @prestamo_estado, notice: 'Prestamo estado was successfully created.' }
        format.json { render :show, status: :created, location: @prestamo_estado }
      else
        format.html { render :new }
        format.json { render json: @prestamo_estado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prestamo_estados/1
  # PATCH/PUT /prestamo_estados/1.json
  def update
    respond_to do |format|
      if @prestamo_estado.update(prestamo_estado_params)
        format.html { redirect_to @prestamo_estado, notice: 'Prestamo estado was successfully updated.' }
        format.json { render :show, status: :ok, location: @prestamo_estado }
      else
        format.html { render :edit }
        format.json { render json: @prestamo_estado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prestamo_estados/1
  # DELETE /prestamo_estados/1.json
  def destroy
    @prestamo_estado.destroy
    respond_to do |format|
      format.html { redirect_to prestamo_estados_url, notice: 'Prestamo estado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prestamo_estado
      @prestamo_estado = PrestamoEstado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prestamo_estado_params
      params.require(:prestamo_estado).permit(:nomEstPres, :desEstPres)
    end
end

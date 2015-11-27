class SignaturasController < ApplicationController
  before_action :set_signatura, only: [:show, :edit, :update, :destroy]

  # GET /signaturas
  # GET /signaturas.json
  def index
    @signaturas = Signatura.all
  end

  # GET /signaturas/1
  # GET /signaturas/1.json
  def show
  end

  # GET /signaturas/new
  def new
    @signatura = Signatura.new
  end

  # GET /signaturas/1/edit
  def edit
  end

  # POST /signaturas
  # POST /signaturas.json
  def create
    @signatura = Signatura.new(signatura_params)

    respond_to do |format|
      if @signatura.save
        format.html { redirect_to @signatura, notice: 'Signatura was successfully created.' }
        format.json { render :show, status: :created, location: @signatura }
      else
        format.html { render :new }
        format.json { render json: @signatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /signaturas/1
  # PATCH/PUT /signaturas/1.json
  def update
    respond_to do |format|
      if @signatura.update(signatura_params)
        format.html { redirect_to @signatura, notice: 'Signatura was successfully updated.' }
        format.json { render :show, status: :ok, location: @signatura }
      else
        format.html { render :edit }
        format.json { render json: @signatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /signaturas/1
  # DELETE /signaturas/1.json
  def destroy
    @signatura.destroy
    respond_to do |format|
      format.html { redirect_to signaturas_url, notice: 'Signatura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_signatura
      @signatura = Signatura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def signatura_params
      params.require(:signatura).permit(:nomSig)
    end
end

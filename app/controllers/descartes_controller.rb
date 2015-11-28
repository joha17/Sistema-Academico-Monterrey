class DescartesController < ApplicationController
  before_action :set_descarte, only: [:show, :edit, :update, :destroy]

  # GET /descartes
  # GET /descartes.json
  def index
    @descartes = Descarte.all
  end

  # GET /descartes/1
  # GET /descartes/1.json
  def show
  end

  # GET /descartes/new
  def new
    @descarte = Descarte.new
  end

  # GET /descartes/1/edit
  def edit
  end

  # POST /descartes
  # POST /descartes.json
  def create
    @descarte = Descarte.new(descarte_params)
    @descarte.user = current_user

    respond_to do |format|
      if @descarte.save
        format.html { redirect_to @descarte, notice: 'Descarte was successfully created.' }
        format.json { render :show, status: :created, location: @descarte }
      else
        format.html { render :new }
        format.json { render json: @descarte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /descartes/1
  # PATCH/PUT /descartes/1.json
  def update
    respond_to do |format|
      if @descarte.update(descarte_params)
        format.html { redirect_to @descarte, notice: 'Descarte was successfully updated.' }
        format.json { render :show, status: :ok, location: @descarte }
      else
        format.html { render :edit }
        format.json { render json: @descarte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /descartes/1
  # DELETE /descartes/1.json
  def destroy
    @descarte.destroy
    respond_to do |format|
      format.html { redirect_to descartes_url, notice: 'Descarte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_descarte
      @descarte = Descarte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def descarte_params
      params.require(:descarte).permit(:obserDesc, :fechaDesc, :user_id, :signatura_id, :libro_id, :cantLibSug, :cantLibDes, :autLibSug, :titLibSug)
    end
end

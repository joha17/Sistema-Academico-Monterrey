class EventosController < ApplicationController
  before_action :set_evento, only: [:show, :edit, :update, :destroy]
  #before_action :authorize, except: [:show, :index]
  #load_and_authorize_resource skip_load_resource only: [:create]

  load_and_authorize_resource

#def authorize
 #   if current_user.nil?
 #     redirect_to login_path, alert: "Not authorized! Please log in."
 #   else
 #     if @evento && @evento.user != current_user
 #       redirect_to root_path, alert: "Not authorized! Only #{@evento.user} has access to this post."
 #     end
 #   end
#  end


  # GET /eventos
  # GET /eventos.json
  def index
    @eventos = Evento.all
  end

  # GET /eventos/1
  # GET /eventos/1.json
  def show
  end

  # GET /eventos/new
  def new
    @evento = Evento.new
  end

  # GET /eventos/1/edit
  def edit
  end

  # POST /eventos
  # POST /eventos.json
  def create
    @evento = Evento.new(evento_params)
    @evento.NomUs = current_user.NomUs
    #authorize! :add, @evento = @evento

    respond_to do |format|
      if @evento.save 
        format.html { redirect_to @evento, success: 'El evento fue almacenado correctamente' }
        format.json { render :show, status: :created, location: @libro }
      else
        format.html { render :new }
        format.json { render json: @evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eventos/1
  # PATCH/PUT /eventos/1.json
  def update
    respond_to do |format|
      if @evento.update(evento_params)
        format.html { redirect_to @evento, info: 'El evento fue editado correctamente.'}
        format.json { render :show, status: :ok, location: @evento }
      else
        format.html { render :edit }
        format.json { render json: @evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eventos/1
  # DELETE /eventos/1.json
  def destroy
    @evento.destroy
    respond_to do |format|
      format.html { redirect_to eventos_url, notice: 'Evento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evento
      @evento = Evento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evento_params
      params.require(:evento).permit(:LugEven, :FechEven, :NomEven, :DescEven, :NomUs)
    end
end

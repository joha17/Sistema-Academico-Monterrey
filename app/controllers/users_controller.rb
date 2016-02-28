class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource skip_load_resource only: [:create]
  # GET /users
  # GET /users.json

  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        pdf = CarnetPdf.new(@user)
        send_data pdf.render, filename: "user_#{@user.id}.pdf", 
        type: "application/pdf",
        disposition: "inline" 
      end
    end
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save 
        format.html { redirect_to @user, success: 'El usuario fue almacenado correctamente' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, success: 'El usuario fue editado correctamente.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, danger: 'El usuario fue eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  def info_user
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:CedUs, :NomUs, :ApUnoUs, :ApDosUs, :edadUs, :FK_NivUs, :dt_ingUs, :dt_salUs, :SecUs, :TelUs, :FK_DirUs, :password, :password_confirmation, :role_id, :photo, :dirUs)
    end
end





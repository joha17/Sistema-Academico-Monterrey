class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by_CedUs(params[:CedUs])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id

      flash[:success] = "Bienvenido"

      redirect_to root_url
    else
      flash[:danger] = "Contraseña o Identificacion Incorrecta."
      render :new
    end
  end
  def destroy
    session[:user_id] = nil
    flash[:danger] = "Sesión Cerrada"
    #format.html { success: 'Sesión Cerrada.' }
    redirect_to root_url
  end
end



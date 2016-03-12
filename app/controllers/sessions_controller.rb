class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by_CedUs(params[:CedUs])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id

      flash[:notice] = "Bienvenido"
      redirect_to root_url
    else
      flash[:notice] = "Constraseña o Identificacion Incorrecta"
      render :new
    end
  end
  def destroy
    session[:user_id] = nil
    flash[:notice] = "Sesion Cerrada"
    #format.html { success: 'Sesión Cerrada.' }
    redirect_to root_url
  end
end

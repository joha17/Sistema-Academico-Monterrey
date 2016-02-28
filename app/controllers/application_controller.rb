class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
  	flash[:error] = "Acceso denegado"
  	redirect_to root_url
  end

  add_flash_types :success, :warning, :danger, :info


  private
  #def current_user
   # User.where(id: session[:user_id]).first
  #end

  def current_user
    User.where(id: session[:user_id]).first
  end
  helper_method :current_user
end

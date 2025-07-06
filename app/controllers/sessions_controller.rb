class SessionsController < ApplicationController
  def new; end
  def create
    u = User.find_by(email: params[:email])
    if u&.authenticate(params[:password])
      session[:user_id] = u.id
      redirect_to root_path
    else
      flash.now[:alert] = "Fehlerhafte Login-Daten"
      render :new
    end
  end
  def destroy
    reset_session
    redirect_to login_path
  end
end

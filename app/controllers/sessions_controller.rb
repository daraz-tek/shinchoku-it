class SessionsController < ApplicationController
  def create
    data = request.env['omniauth.auth']
    session[:user] = data.info
    redirect_to root_path, notice: 'login!'
  end

  def destroy
    session[:user] = nil
    redirect_to root_path, notice: 'logout!'
  end
end

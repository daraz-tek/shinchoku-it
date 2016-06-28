class SessionsController < ApplicationController
  login_required only: :destroy

  def create
    profile = SocialProfile.find_by_omniauth(request.env['omniauth.auth'])
    if profile.save
      session[:user_id] = profile.user.id
      redirect_to root_path, notice: 'login!'
    else
      # TODO: raise error
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'logout!'
  end
end

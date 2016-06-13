module Authorizable
  extend ActiveSupport::Concern

  included do
    alias_method :logged_in?, :current_user?
    helper_method :current_user, :current_user?, :logged_in?, :current_team
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def current_user?
    !!current_user
  end

  def current_team
    @current_team ||= current_user.team
  end
end

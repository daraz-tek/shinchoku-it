class DefaultsController < ApplicationController

  def index
    redirect_to feeds_path if logged_in?
  end
end

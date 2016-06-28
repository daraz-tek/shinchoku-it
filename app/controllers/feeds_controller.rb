class FeedsController < ApplicationController
  login_required

  # GET /feeds
  def index
    @reports = current_team.timelines.page(params[:page]).decorate
  end
end

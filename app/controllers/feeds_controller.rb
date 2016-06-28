class FeedsController < ApplicationController
  login_required

  # GET /feeds
  def index
    @reports = current_team.timelines.decorate
  end
end

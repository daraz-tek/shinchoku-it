class FeedsController < ApplicationController
  login_required

  # GET /reports
  def index
    @reports = current_team.timelines.decorate
  end
end

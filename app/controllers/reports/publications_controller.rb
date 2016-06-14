class Reports::PublicationsController < ApplicationController
  login_required

  # GET /reports/drafts
  def index
    @reports = current_user.reports.published
    render 'reports/index'
  end
end

class Reports::PublicationsController < ApplicationController
  login_required

  # GET /reports/publications
  def index
    @reports = current_user.reports.published.decorate
    render 'reports/index'
  end
end

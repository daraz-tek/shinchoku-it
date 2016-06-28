class Reports::PublicationsController < ApplicationController
  login_required

  # GET /reports/publications
  def index
    @reports = current_user.reports.published.order(updated_at: :desc).decorate
    render 'reports/index'
  end
end

class Reports::DraftsController < ApplicationController
  login_required

  # GET /reports/drafts
  def index
    @reports = current_user.reports.draft.order(updated_at: :desc).page(params[:page]).decorate
    render 'reports/index'
  end
end

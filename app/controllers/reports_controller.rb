class ReportsController < ApplicationController
  login_required

  before_action :set_report, only: [:show, :edit, :update, :destroy]

  # GET /reports
  def index
    @reports = current_user.reports.order(updated_at: :desc).page(params[:page]).decorate
  end

  # GET /reports/1
  def show
  end

  # GET /reports/new
  def new
    @report = current_user.reports.build
  end

  # GET /reports/1/edit
  def edit
  end

  # POST /reports
  def create
    @report = current_user.reports.build(report_params)
    @report.status = :draft if params.key?(:draft)

    if @report.save
      redirect_to @report, notice: 'Report was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /reports/1
  def update
    if @report.update(report_params)
      redirect_to @report, notice: 'Report was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /reports/1
  def destroy
    @report.destroy
    redirect_to reports_url, notice: 'Report was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report
      @report = current_user.reports.find(params[:id]).decorate
    end

    # Only allow a trusted parameter "white list" through.
    def report_params
      params.require(:report).permit(:title, :content)
    end
end

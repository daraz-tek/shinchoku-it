class Feeds::SearchController < ApplicationController
  login_required

  # GET /feeds
  def index
    @q = search_keyword
    return redirect_to feeds_path if @q.blank?

    @reports = current_team.timelines.search_by(@q).page(params[:page]).decorate
    render 'feeds/index'
  end

  private

    def search_keyword
      params[:q].to_s.strip
    end
end

class DefaultsController < ApplicationController
  login_required

  def show
    @feeds = current_team.timelines.decorate
  end
end

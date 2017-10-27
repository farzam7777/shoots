class ShootsController < ApplicationController
  def index
  	@shoots = Shoot.all
	  @shoots_by_date = @shoots.group_by(&:start_date)
	  @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end
end

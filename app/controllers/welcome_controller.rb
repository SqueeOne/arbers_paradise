class WelcomeController < ApplicationController
  def index
    @basic_plan = Plan.find(1)
    @intermediate_plan = Plan.find(2)
    @advanced_plan = Plan.find(3)
  end
  
  def tuts
  end
  
  def sportsbooks
  end
  
  def videos
    if current_user
      @plan_id = current_user.plan_id
      @videos = Video.where("plan_id = ?", @plan_id)
    else
      @videos = Video.where("plan_id = '1'")
    end
  end
  
end

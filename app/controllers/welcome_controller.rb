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
   
  end
  
end

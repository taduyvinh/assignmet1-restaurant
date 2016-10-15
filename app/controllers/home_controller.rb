class HomeController < ApplicationController
  def index
  end

  def home
  	
  end
  def menu
  	if params[:section]
  		@section = Section.where(name: params[:section]).first
  	end
    @food_item = FoodItem.last
  end  


  def contact_us

  end

end

class OrdersController < ApplicationController
  def index
  	@orders = Order.all
  end
 

 # GET /orders/new
  def new
 	@food_item =  FoodItem.find params[:food_item_id] 
	
  end

  def create
    @food_item =  FoodItem.find params[:food_item_id] 
    @order = Order.new(order_params)
    @order.food_item = @food_item
    if @order.save 
    flash[:success] = "Created Order!"
    redirect_to food_item_order_path(@food_item, @order)
    else
    flash[:error] = "Order not submitted!"
    redirect_to menu_path
    end
  end
  def show
      @order = Order.find params[:id]
      @food_item = FoodItem.find params[:food_item_id]
  end
  
  def order_params
      params.require(:order).permit(:username, :phonenumber, :address)
  end

end

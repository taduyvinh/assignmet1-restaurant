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
    @order = Order.new

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Thank you for your order.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def order_params
      param.require(:order).permit(:username, :phonenumber, :addressn_id)
  end

end

class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def edit
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.create(order_params)
    redirect_to orders_path
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(orders_params)
      redirect_to @order
    else
      render 'edit'
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path
  end


  private

    def order_params
      params.require(:order).permit(:name, :price, :picture, item_ids: [])
    end
end

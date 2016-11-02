class OrdersController < ApplicationController
  before_action :require_login

  def index
    @orders = current_user.orders
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
    2.times { @order.line_items.build}
  end

  def edit
    @order = Order.find(params[:id])
  end

  def create
    @order = current_user.orders.create(orders_params)
    if @order.save
      redirect_to orders_path
    else
      render :new
    end
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

  def require_login
    redirect_to new_user_path unless current_user
  end

  def orders_params
    params.require(:order).permit(:title, :description, :order_date, :user_id, :type_of_course, :price)
  end
end

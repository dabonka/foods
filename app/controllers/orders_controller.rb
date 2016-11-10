class OrdersController < ApplicationController

  before_action :authenticate_user!

  authorize_resource

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
    @order = Order.new(item_ids: (order_params[:first_course]+ order_params[:second_course]+ order_params[:third_course]) - ["", nil])
    @order.user_id = current_user.id
    @order.order_date = Date.today
      @order.save!
    if @order.save
      redirect_to root_path
    else
      render 'new'
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

    def order_params
      params.require(:order).permit(:name, :price, :user_id, :order_date, first_course: [], second_course: [], third_course: [])
    end
end

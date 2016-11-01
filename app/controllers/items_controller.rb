class ItemsController < ApplicationController

  before_action :require_login

  def index
    @items = current_user.items
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
  end

  def edit
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.new(items_params)
    @item.save
    redirect_to @item
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(items_params)
      redirect_to @item
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

  private

  def require_login
    redirect_to new_user_path unless current_user
  end

  def items_params
    params.require(:item).permit(:day_order, :title, :description, :course, :price, :user_id)
  end


end
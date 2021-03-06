class ItemsController < ApplicationController

  before_action :authenticate_user!

  authorize_resource

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def edit
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.new(items_params)
    if @item.save
      redirect_to items_path
    else
      render :new
    end
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
    params.require(:item).permit(:day_order, :title, :course, :price, :avatar)
  end


end
class ItemsController < ApplicationController

  before_action :require_login

  def index
    @items = current_user.items
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = current_user.items.new
  end

  def edit
    @item = Item.find(params[:id])
  end

  def create
    @item = current_user.items.create(items_params)
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
    params.require(:item).permit(:item_date, :title, :description, :type_of_course, :price)
  end


end
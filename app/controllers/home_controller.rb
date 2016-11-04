class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @item_dates = Item.select(:day_order).distinct
  end
end

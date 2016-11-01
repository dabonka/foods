class HomeController < ApplicationController
  def index
    @today = Time.new
    @day_today = (@today).strftime("%A")
  end
end

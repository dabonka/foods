class HomeController < ApplicationController
  def index
    @today = Time.new
    @yesterday = @today - 1.day
    @tomorrow = @today + 1.day

    @day_today = (@today).strftime("%A")
    @day_yesterday = (@today - 1.day).strftime("%A")
    @day_tomorrow = (@today + 1.day).strftime("%A")
  end
end

require 'rails_helper'

RSpec.describe Order, type: :model do
  it "create order" do
      @order = Order.create!(user_id: 1, order_date: Date.today)
      expect(@order.user_id).to eq 1
      expect(@order.order_date).to eq Date.today
  end
end

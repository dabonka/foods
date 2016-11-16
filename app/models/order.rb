class Order < ApplicationRecord
  belongs_to  :user
  has_and_belongs_to_many    :items

  def self.sum_current_date_orders
    sum_prices = 0
      self.where(order_date: Date.today).find_each do |order|
        order.items.find_each
        sum_prices += order.items.price 
      end
  end


end


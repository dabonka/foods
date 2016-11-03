class Item < ApplicationRecord
  has_many :line_items
  has_many :orders
  
   scope :for_today, -> { where("day_order = ?", Time.now)}
end

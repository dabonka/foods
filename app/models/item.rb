class Item < ApplicationRecord
  has_and_belongs_to_many    :orders
  
   scope :for_today, -> { where("day_order = ?", Time.now)}
end

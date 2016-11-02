class Item < ApplicationRecord
  has_many :line_items
  has_many :orders, through: :line_items

   scope :for_today, -> { where("day_order = ?", Time.now)}
end

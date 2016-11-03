class Order < ApplicationRecord
  belongs_to  :users
  has_many    :line_items
  has_many    :items
end


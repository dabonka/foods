require 'rails_helper'

RSpec.describe Item, type: :model do
  it "items by last name" do
      @item = Item.create!(title: "Суп", price: 25, course: "First", day_order: Date.today)
      expect(@item.title).to eq "Суп"
      expect(@item.price).to eq 25
      expect(@item.course).to eq "First"
      expect(@item.day_order).to eq Date.today
    end
end

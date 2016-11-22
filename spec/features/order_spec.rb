require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'
require_relative "../features/feature_helper.rb"

describe  "Orders", :type => :feature do

  let!(:user) { create(:user) }

  describe "Create new order" do
  before{ sign_in(user.email, user.password) }

    it "Create new item with correct data" do
      visit '/items/new'
      fill_in 'item_title', with: 'Борщ'
      fill_in 'Price', with: 5
      choose('First')
      attach_file Rails.root.join('spec/fixture/some_file.png')
      click_button 'Create Item'
      expect(page).to have_content 'Listing items'
      visit '/orders/new'
      check("Борщ")
      click_button 'Create Order'
      expect(page).to have_content 'Days'
     
    end
  end
end
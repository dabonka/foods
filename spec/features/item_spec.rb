require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'
require_relative "../features/feature_helper.rb"

describe  "Items", :type => :feature do

  let!(:user) { create(:user) }

  describe "Create new item" do
  before{ sign_in(user.email, user.password) }

    it "Create new item with correct data" do
      visit '/items/new'
      fill_in 'item_title', with: 'Борщ'
      fill_in 'Price', with: 5
      choose('First')
      click_button 'Create Item'
      expect(page).to have_content 'Listing items'
     
    end
  end
end
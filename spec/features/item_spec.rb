require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'



describe  "Items", :type => :feature do

  let!(:user) { create(:user) }

  describe "Create new item" do

    it "Create new item with correct data" do
      visit '/users/sign_in'
      fill_in 'Email', with: 'user@test.com'
      fill_in 'Password', with: '12345678'
      click_button 'Log in'
      expect(page).to have_content 'Signed in successfully.'
      visit '/items/new'
      fill_in 'item_title', with: 'Борщ'
      fill_in 'Price', with: 5
      choose('First')
      click_button 'Create Item'
      expect(page).to have_content 'Listing items'
     
    end
  end
end
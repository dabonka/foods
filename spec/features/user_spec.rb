require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'

describe  "Users", :type => :feature do

  let!(:user) { create(:user) }

  describe "Create new user" do

    it "Create new user with correct data" do
      visit '/users/sign_up'
      fill_in 'Email', with: 'admin@test.com'
      fill_in 'Password', with: '12345678'
      fill_in 'Password confirmation', with: '12345678'
      click_button 'Sign up'
      expect(page).to have_content 'Welcome! You have signed up successfully.'
    end

    it "Create new user with incorrect data" do
      visit '/users/sign_up'
      fill_in 'Email', with: '12321232123212321'
      fill_in 'Password', with: '12345678'
      fill_in 'Password confirmation', with: '111111'
      click_button 'Sign up'
      expect(page).to have_content 'Password confirmation doesn\'t match Password'
    end

  end


  describe "Login existing user" do

    it "signs me in wtih correct data" do
      visit '/users/sign_in'
      fill_in 'Email', with: 'user@test.com'
      fill_in 'Password', with: '12345678'
      click_button 'Log in'
      expect(page).to have_content 'Signed in successfully'
    end

    it "signs me in wtih incorrect data" do
      visit '/users/sign_in'
      fill_in 'Email', with: 'user@test.com'
      fill_in 'Password', with: '111111111'
      click_button 'Log in'
      expect(page).to have_content 'Forgot your password?'
    end

  end


end
require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the contect 'Sample App'" do
    	visit '/static_pages/home'
    	expect(page).to have_content('Sample App')
    end

    it "should have the correct title" do
      visit '/static_pages/home'
      expect(page).to have_title("JBK Sample App | Home")
    end
  end

  describe "Help page" do
  	it "should have the content 'Help page'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help page')
  	end

    it "should have the correct title" do
      visit '/static_pages/help'
      expect(page).to have_title("JBK Sample App | Help")
    end
  end

  describe "About page" do
  	it "should have the content 'About page'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About page')
  	end

    it "should have the correct title" do
      visit '/static_pages/about'
      expect(page).to have_title("JBK Sample App | About")
    end
  end


end

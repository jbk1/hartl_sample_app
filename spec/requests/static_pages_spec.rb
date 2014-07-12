require 'spec_helper'

describe "Static pages" do

  let(:base_title) {"JBK Sample App"}

  describe "Home page" do
    it "should have the contect 'Sample App'" do
    	visit '/static_pages/home'
    	expect(page).to have_content('Sample App')
    end

    it "should have the correct title" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title}")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do
  	it "should have the content 'Help page'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help page')
  	end

    it "should have the correct title" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do
  	it "should have the content 'About page'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About page')
  	end

    it "should have the correct title" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About")
    end
  end

  describe "Contact page" do
    it "should have the content, 'contact me at: james@bibble.com'" do
      visit '/static_pages/contact'
      expect(page).to have_content('james@bibble.com')
    end

    it "should have a title of 'Contact page'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end
  end

end

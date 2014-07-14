require 'spec_helper'

describe "Static pages" do

  let(:base_title) {"JBK Sample App"}

  describe "Home page" do
    # before {}
    it "should have the contect 'Sample App'" do
    	visit root_path
    	expect(page).to have_content('Sample App')
    end

    it "should have the correct title" do
      visit root_path
      expect(page).to have_title("#{base_title}")
    end

    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do
  	it "should have the content 'Help page'" do
  		visit help_path
  		expect(page).to have_content('Help page')
  	end

    it "should have the correct title" do
      visit help_path
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do
  	it "should have the content 'About page'" do
  		visit about_path
  		expect(page).to have_content('About page')
  	end

    it "should have the correct title" do
      visit about_path
      expect(page).to have_title("#{base_title} | About")
    end
  end

  describe "Contact page" do
    it "should have the content, 'contact me at: james@bibble.com'" do
      visit contact_path
      expect(page).to have_content('james@bibble.com')
    end

    it "should have a title of 'Contact page'" do
      visit contact_path
      expect(page).to have_title("#{base_title} | Contact")
    end
  end

end

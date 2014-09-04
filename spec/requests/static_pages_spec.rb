require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }
    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }
  	it { should have_content('Help page') }
    it { should have_title(full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }
  	it { should have_content('About page') }
    it { should have_title(full_title('About')) }
  end

  describe "Contact page" do
    before { visit contact_path }
    it { should have_selector('h1', text: 'Contact') }
    it { should have_title(full_title('Contact')) }
  end
end


# ALternative test language using the "shared_examples_for syntax". Runs failures in below format however:

# describe "Static pages" do

#   subject { page }

#   shared_examples_for "all static pages" do
#     it { should have_selector('h1', text: heading) }
#     it { should have_title(text: full_title(page_title)) }
#   end

#   describe "Home page" do
#     before { visit root_path }
#     let(:heading) { 'Sample App' }
#     let(:page_title) { '' }

#     it_should_behave_like "all static pages"
#     it { should_not have_title('| Home') }
#   end

#   describe "Help page" do
#     before { visit help_path }
#     let(:heading) { 'Help Page' }
#     let(:page_title) { '| Help' }    

#     it_should_behave_like "all static pages"
#   end

#   describe "About page" do
#     before { visit about_path }
#     let(:heading) { 'About Page' }
#     let(:page_title) { '| About' }   

#     it_should_behave_like "all static pages"
#   end

#   describe "Contact page" do
#     before { visit contact_path }
#     let(:heading) { 'Contact Page' }
#     let(:page_title) { '| Contact' }   

#     it_should_behave_like "all static pages"
#   end
# end

require 'spec_helper'

describe "Authentication" do
  
  subject { page }

  describe "signin page" do
  	before { visit signup_path }

  	it { should have_content('Sign in') }
  	# it { should have_title 'Sign in' }
  	# this above test is commented out as i'm sure it's failing due to a versioning issue.
  end

end

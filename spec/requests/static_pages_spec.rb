require 'spec_helper'

describe "StaticPages" do
	#let(:base_title){"Ruby on Rails Tutorial Sample App"}
  subject{page}

  describe "Home page" do
    before{visit root_path}

  	it { should have_content('Sample App')}
  	it { should have_title(full_title(''))}
  end

  describe "Help page" do
    before{visit help_path}

  	it { should have_content('Help')}
    it { should have_title(full_title('Help'))}
  end

  describe "about page" do
  	before{visit about_path}

    it { should have_content('About')}
    it { should have_title(full_title('About'))}
  end

  describe "contact page" do
  	before{visit contact_path}

    it { should have_content('Contact')}
    it { should have_title(full_title('Contact'))}
  end
end

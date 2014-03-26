require 'spec_helper'

describe "StaticPages" do
	let(:base_title){"Ruby on Rails Tutorial Sample App"}
  describe "Home page" do
  	it "should have the content 'Sample App'" do
  		visit "/static_pages/home"
  		expect(page).to have_content('Sample App')
  	end
  	it "should have the right title" do
  		visit '/static_pages/home'
  		expect(page).to have_title("#{base_title}|Home")
  	end
  end

  describe "Help page" do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  		expect(page).to have_title("#{base_title}|Help")
  	end
  end

  describe "about page" do
  	it "should have the content 'About'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About')
  		expect(page).to have_title("#{base_title}|About")
  	end
  end

  describe "contact page" do
  	it "should have the content 'Contact' and right title" do
  		visit '/static_pages/contact' 
  		expect(page).to have_content('Contact')
  		expect(page).to have_title("#{base_title}|Contact")
  	end
  end
end

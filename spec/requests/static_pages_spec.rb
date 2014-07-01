require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
  	it "should have the content 'Home'" do
  	  visit '/static_pages/home'
      expect(page).to have_content('Home')
  	end

  	it "should have the title 'Sidekick'" do
  		visit '/static_pages/home'
  		expect(page).to have_title('Sidekick')
  	end
  end

  describe "About us" do
  	it "should have the content 'About us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About Us')
  	end

  	it "should have the title 'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_title('About')
  	end
  end

end

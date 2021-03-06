require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
  	it "should have the content 'Home'" do
  	  visit root_path
      expect(page).to have_content('Home')
  	end

  	it "should have the title 'Sidekick'" do
  		visit root_path
  		expect(page).to have_title('Sidekick')
  	end
  end

  describe "About us" do
  	it "should have the content 'About us'" do
  		visit about_path
  		expect(page).to have_content('About Us')
  	end

  	it "should have the title 'About Us'" do
  		visit about_path
  		expect(page).to have_title('About')
  	end
  end

  # describe "Bug reports" do
  #   it "should have the content 'bug reports'" do
  #     visit bug_path
  #     expect(page).to have_content('bugs')
  #   end
  #   it "should have the title 'Bugs'" do
  #     visit bug_path
  #     expect(page).to have_title('Bug reports')
  #   end
  # end

  describe "newbug page" do
    it "should have content new " do
      visit newbug_path
      #it { should have_content("new") }
      expect(page).to have_content('new')
    end
  end
end
require 'spec_helper'

describe "StaticPages" do
	describe "Home page" do
		it "should have the h1 'Sample App'" do 
			visit '/static_pages/home'# visit is capybara function
			#page.should have_content('Sample App')
			page.should have_selector('h1', :text => 'Sample App')
		end

		it "should have title 'Ruby on Rails Tutorial| Home '" do
			visit '/static_pages/home'
			page.should have_selector('title', :text => 'Ruby on Rails Tutorial|Home')
		end
	end

	describe "Help page" do
                it "should have the content 'Help'" do
                        visit '/static_pages/help'# visit is capybara function
                        page.should have_selector('h1', :text => 'Help')
                end
		
		it "should have the title 'Ruby on Rails Tutorial|Help" do
			visit '/static_pages/help'
			page.should have_selector('title', :text => 'Ruby on Rails Tutorial|Help')
		end
        end

	describe "About page" do
                it "should have the content 'About Us'" do
                        visit '/static_pages/about'# visit is capybara function
                        page.should have_selector('h1', :text => 'About Us')
                end

		it "should have the title 'Ruby on Rails Tutorial|About Us" do
                        visit '/static_pages/about'
                        page.should have_selector('title', :text => 'Ruby on Rails Tutorial|About Us')
                end
        end
end

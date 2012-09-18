require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get static_pages_index_path
      #response.status.should be(200)
    end
  end

  describe "Help Page"do
    it"should have the content 'help'"do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
  end

  describe "About Page"do
    it"should have the content 'About us'"do
      visit '/static_pages/about'
      page.should have_content('About us')
    end
  end

end
require 'spec_helper'




describe "StaticPages" do
  let(:someGeneric){"Ruby on Rails Tutorial Sample App"}

  subject { page }
  describe "Home Page" do
     before { visit root_path }

      it {should have_selector('h1', text: 'Sample App')}

      it {should have_selector('title',text: full_title('Home'))  }


  end

  describe "Help Page"do
    before {visit help_path}
    it {should have_content('Help')     }
  end

  describe "About Page"do
    before {visit about_path}
    it {should have_content('About us')      }

   end

  describe "Home page"do
    before {visit home_path}
    it {should have_selector('title', :text => "#{someGeneric} | Home")}
   end

  describe "Contact Page"do
  it "should have the h1 'contact us'"do
    visit contact_path
    #visit contact_path
    page.should have_selector('h1', :text => "Contact Us")
  end
  end


  describe "Contact page" do

    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title',
                                text: "Ruby on Rails Tutorial Sample App | Contact")
    end
  end

end

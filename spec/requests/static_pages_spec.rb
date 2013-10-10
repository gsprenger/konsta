require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the content 'Home'" do
      visit '/home'
      expect(page).to have_content('Home')
    end
  end
end

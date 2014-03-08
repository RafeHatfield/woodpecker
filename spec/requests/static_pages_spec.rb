require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the content 'Welcome to Woodpecker'" do
      visit '/'
      page.status_code.should be(200)
      expect(page).to have_content('Welcome to Woodpecker')
    end

  end
end

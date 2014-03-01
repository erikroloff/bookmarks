require 'spec_helper'

describe "Bookmarks" do
  describe "GET /bookmarks" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get bookmarks_path
      response.status.should be(200)
    end
  end

  describe "Show Bookmarks" do
  	it "should have the content" do
  		visit '/bookmarks'
  		expect(page).to have_content('Listing bookmarks')
  	end
  end

  describe "Add Bookmark" do
  	it "should have the content" do
  		visit '/bookmarks/new'
  		expect(page).to have_content('New bookmark')
  	end
  	it "should not create a bookmark with an invalid url" do
  		visit '/bookmarks/new' 
  		fill_in "Url", :with=>""
  		click_button "Create Bookmark"
  		expect(page).to have_content('Name is too short')
  	end
  	it "should not create a bookmark with an invalid name" do
  		visit '/bookmarks/new'
  		fill_in "Name", :with=>""
  		click_button "Create Bookmark"
  		expect(page).to have_content('Url is too short')
  	end
  end
end

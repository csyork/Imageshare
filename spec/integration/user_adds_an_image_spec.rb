require 'rails_helper.rb'

feature"User adds a photo" do
    scenario "User successfully navigates to the upload page from the index page" do
        visit root_path
        expect(page).to have_content("Photos")
        click_link "Upload New Image"
        expect(page).to have_content("Upload Photo")
        expect(page).to have_field("Image")
    end
end
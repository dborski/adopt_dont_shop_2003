require 'rails_helper'

describe "user creates a new shelter" do
  describe "they link from the shelters index" do
    describe "they fill in all shelter attributes" do
      it "creates a new shelter" do

        visit "/shelters/"
        click_link "New Shelter"

        expect(current_path).to eq("/shelters/new")

        fill_in "shelter[name]", with: "New name"
        fill_in "shelter[address]", with: "New address"
        fill_in "shelter[city]", with: "New city"
        fill_in "shelter[state]", with: "New state"
        fill_in "shelter[zip]", with: "New zip"
        click_on "Create Shelter"

        expect(page).to have_content("New name")
        expect(page).to have_content("New address")
        expect(page).to have_content("New city")
        expect(page).to have_content("New state")
        expect(page).to have_content("New zip")
      end
    end
  end
end

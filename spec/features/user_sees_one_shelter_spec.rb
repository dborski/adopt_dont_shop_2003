require 'rails_helper'

describe "user sees one shelter" do
  describe "they visit /shelters/:id" do
    it "displays information for one shelter" do

      shelter = create(:shelter)

      visit "/shelters/#{shelter.id}"
      # visit shelters_path(:id)

      expect(page).to have_content(shelter.name)
      expect(page).to have_content(shelter.address)
      expect(page).to have_content(shelter.city)
      expect(page).to have_content(shelter.state)
      expect(page).to have_content(shelter.zip)
    end
  end
end

require 'rails_helper'

describe "user can edit each shelter from shelters index" do
  describe "they link from the shelters index" do
    it "links to the shelter edit page" do

      shelter1 = create(:shelter)
      shelter2 = create(:shelter)
        
      visit "/shelters/"

      expect(page).to have_link("Edit Shelter", :href=>"/shelters/#{shelter1.id}/edit")
      expect(page).to have_link("Edit Shelter", :href=>"/shelters/#{shelter2.id}/edit")
    end
  end
end
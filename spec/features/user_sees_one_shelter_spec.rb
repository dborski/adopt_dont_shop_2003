require 'rails_helper'

describe "user sees one shelter" do
  describe "they visit /shelters/id" do
    it "displays information one shelter" do
      shelter1 = Shelter.create!({name: "Shelter1", address: "1 Shelter Ave", city: "1 City", state: "1 State", zip: "1 Zip"})

      visit '/shelters/:id'

      expect(page).to have_content(shelter1.name)
      expect(page).to have_content(shelter1.address)
      expect(page).to have_content(shelter1.city)
      expect(page).to have_content(shelter1.state)
      expect(page).to have_content(shelter1.zip)
    end
  end 
end

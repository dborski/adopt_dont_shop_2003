require 'rails_helper'

describe "user sees all shelters" do
  describe "they visit /shelters" do
    it "displays all shelters" do
      shelter1 = Shelter.create!({name: "Shelter1", address: "1 Shelter Ave", city: "1 City", state: "1 State", zip: "1 Zip"})
      shelter2 = Shelter.create!({name: "Shelter2", address: "2 Shelter Ave", city: "2 City", state: "2 State", zip: "2 Zip"})

      visit '/shelters'

      expect(page).to have_content(shelter1.name)
      expect(page).to have_content(shelter2.name)
    end
  end
end

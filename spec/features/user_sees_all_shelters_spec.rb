require 'rails_helper'

describe "user sees all shelters" do
  describe "they visit /shelters" do
    it "displays all shelters" do

      shelter1 = create(:shelter)
      shelter2 = create(:shelter)

      visit shelters_path

      expect(page).to have_content(shelter1.name)
      expect(page).to have_content(shelter2.name)
    end
  end
end

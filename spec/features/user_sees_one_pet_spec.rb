require 'rails_helper'

describe "user sees one pet" do
  describe "they visit pets/:id" do
    it "displays information for one pet" do

      pet1 = create(:pet)
      pet2 = create(:pet)

      visit "/pets/#{pet1.id}"

      expect(page).to have_content(pet1.name)
      expect(page).to have_content(pet1.age)
      expect(page).to have_content(pet1.sex)
      expect(page).to have_content(pet1.adoption_status)
      expect(page).to have_content(pet1.description)
      expect(page).to have_xpath("//img[@src = '#{pet1.img_url}' and @alt= '#{pet1.id}']")

      expect(page).to_not have_content(pet2.name)
    end
  end
end


# User Story 9, Pet Show
#
# As a visitor
# When I visit '/pets/:id'
# Then I see the pet with that id including the pet's:
# - image
# - name
# - description
# - approximate age
# - sex
# - adoptable/pending adoption status

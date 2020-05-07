require 'rails_helper'

describe "user sees one pet" do
  describe "they visit pets/:id" do
    it "displays information for one pet" do

      pet = create(:pet)

      visit "/pets/#{pet.id}"

      expect(page).to have_content(pet.name)
      expect(page).to have_content(pet.age)
      expect(page).to have_content(pet.sex)
      expect(page).to have_content(pet.adoption_status)
      expect(page).to have_content(pet.descripton)
      expect(page).to have_xpath("//img[@src = '#{pet1.img_url}' and @alt= '#{pet1.id}']")
    end
  end
end


# User Story 9, Pet Show

# Then I see the pet with that id including the pet's:
# - image
# - name
# - description
# - approximate age
# - sex
# - adoptable/pending adoption status

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

describe "user can delete each shelter from shelters index" do
  describe "they link from the shelters index" do
    it "deletes the shelter" do

      shelter = create(:shelter)
        
      visit "/shelters/"

      expect(page).to have_link("Delete", :href=>"/shelters/#{shelter.id}")
    end
  end
end

describe "user can edit each shelter from pets index" do
  describe "they link from the pets index" do
    it "edits the shelter" do

      pet = create(:pet)
        
      visit "/pets/"

      expect(page).to have_link("Edit Pet", :href=>"/pets/#{pet.id}/edit")
    end
  end
end

describe "user can edit each shelter from shelters/pets index" do
  describe "they link from the shelter/pets index" do
    it "edits the shelter" do
      
      shelter = create(:shelter)
      pet = create(:pet, shelter_id: "#{shelter.id}")
      
      visit "shelters/#{shelter.id}/pets/"
      
      expect(page).to have_link("Edit Pet", :href=>"/pets/#{pet.id}/edit")
    end
  end
end

describe "user can delete each pet from pets index" do
  describe "they link from the pets index" do
    it "deletes the pet" do

      pet = create(:pet)
        
      visit "/pets/"

      # expect(page).to have_link("Delete Pet", :href=>"/pets/#{pet.id}/delete")
    end
  end
end

describe "user can delete each pet from pets/pets index" do
  describe "they link from the shelters/pets index" do
    it "deletes the pet" do
      
      shelter = create(:shelter)
      pet = create(:pet, shelter_id: "#{shelter.id}")
      
      visit "shelters/#{shelter.id}/pets/"
      
      # expect(page).to have_link("Delete Pet", :href=>"/pets/#{pet.id}/delete")
    end
  end
end

# User Story 16, Pet Delete From Pets Index Page

# As a visitor
# When I visit the pets index page or a shelter pets index page
# Next to every pet, I see a link to delete that pet
# When I click the link
# I should be taken to the pets index page where I no longer see that pet
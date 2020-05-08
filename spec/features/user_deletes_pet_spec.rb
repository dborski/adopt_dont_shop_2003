require 'rails_helper'

describe "user deletes a pet" do
  describe "they link from the pet show page" do
     it "displays all pets without the deleted entry" do

       pet1 = create(:pet)
       pet2 = create(:pet)

       visit "/pets/#{pet2.id}"
       click_link "Delete Pet"

       expect(current_path).to eq("/pets/")

       expect(page).to have_content(pet1.name)
       # expect(page).to have_xpath("//img[@src = '#{pet1.img_url}' and @alt= '#{pet1.id}']")
       expect(page).to have_content(pet1.age)
       expect(page).to have_content(pet1.sex)
       expect(page).to have_content(pet1.adoption_status)
       expect(page).to have_content(pet1.description)
       expect(page).to_not have_content(pet2.name)
       # expect(page).to have_xpath("//img[@src = '#{pet1.img_url}' and @alt= '#{pet1.id}']")
       # expect(page).to_not have_content(pet2.age)
       expect(page).to_not have_content(pet2.sex)
       expect(page).to_not have_content(pet2.adoption_status)
       expect(page).to_not have_content(pet2.description)
     end
  end
end


# User Story 12, Pet Delete
#
# As a visitor
# When I visit a pet show page
# Then I see a link to delete the pet "Delete Pet"
# When I click the link
# Then a 'DELETE' request is sent to '/pets/:id',
# the pet is deleted,
# and I am redirected to the pet index page where I no longer see this pet

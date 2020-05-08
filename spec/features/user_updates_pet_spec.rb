require 'rails_helper'

describe "user updates a pet" do
  describe "they link from the pet show page" do
    describe "they fill in new pet info" do
      it "updates the pet" do

        pet = create(:pet)

        visit "pets/#{pet.id}"
        click_link "Update Pet"

        expect(current_path).to eq("/pets/#{pet.id}/edit")

        fill_in :name, with: "Update name"
        fill_in :img_url, with: "www.img.com/2"
        fill_in :age, with: 10
        fill_in :sex, with: "female"
        fill_in :description, with: "really cute"
        click_on "Update Pet"

        expect(current_path).to eq("/pets/#{pet.id}")

        expect(page).to have_content("Update name")
        expect(page).to have_content("Update address")
        expect(page).to have_content("Update city")
        expect(page).to have_content("Update state")
        expect(page).to have_content("Update zip")
      end
    end
  end
end




# User Story 11, Pet Update
#
# As a visitor
# When I visit a Pet Show page
# Then I see a link to update that Pet "Update Pet"
# When I click the link
# I am taken to '/pets/:id/edit' where I see a form to edit the pet's data including:
# - image
# - name
# - description
# - approximate age
# - sex
# When I click the button to submit the form "Update Pet"
# Then a `PATCH` request is sent to '/pets/:id',
# the pet's data is updated,
# and I am redirected to the Pet Show page where I see the Pet's updated information

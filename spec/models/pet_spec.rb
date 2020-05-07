require 'rails_helper'

describe Pet, type: :model do
  describe "validations" do
    it { should validate_presence_of :name }
  end
  describe "relationships" do
    it { should belong_to :shelter }
  end
  describe "methods" do
    it ".adoptable_pets" do
      shelter = create(:shelter)
      pet1 = create(:pet, shelter_id: "#{shelter.id}", adoption_status: "pending")
      pet2 = create(:pet, shelter_id: "#{shelter.id}")
      pet3 = create(:pet, shelter_id: "#{shelter.id}")

      pets = Pet.all

      expect(pets.adoptable_pets).to eq([pet2, pet3])
    end
  end
end

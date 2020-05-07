class Pet < ApplicationRecord
  belongs_to :shelter
  validates_presence_of :name

  def self.adoptable_pets
    select { |pet| pet.adoption_status == "adoptable" }
  end
end

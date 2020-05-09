class Pet < ApplicationRecord
  belongs_to :shelter
  validates_presence_of :name
  validates :sex, inclusion: { in: %w(male female),
    message: "%{value} is not a valid sex" }

  def self.adoptable_pets
    select { |pet| pet.adoption_status == "adoptable" }
  end
end
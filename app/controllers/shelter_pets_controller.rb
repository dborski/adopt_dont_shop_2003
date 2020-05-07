class ShelterPetsController < ApplicationController

  def index
    @pets = Pet.all
  end
end

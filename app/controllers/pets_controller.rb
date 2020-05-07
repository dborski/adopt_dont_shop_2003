class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def shelter_index
    @pets = Pet.all
  end

end

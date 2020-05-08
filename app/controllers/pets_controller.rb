class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def new
    @shelter_id = params[:shelter_id]
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def edit
    @pet_id = params[:id]
  end

  def create
    shelter = Shelter.find(params[:shelter_id])
    pet = shelter.pets.create(pet_params)

    pet.save

    redirect_to "/shelters/#{shelter.id}/pets"
  end

  def update
    pet = Pet.find(params[:id])
    pet.update({
      name: params[:name],
      img_url: params[:img_url],
      age: params[:age],
      sex: params[:sex],
      description: params[:description],
    })

    pet.save

    redirect_to "/pets/#{pet.id}"
  end

  private

  def pet_params
    params.permit(:name, :img_url, :age, :sex, :description)
  end
end

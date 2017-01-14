class PetsController < ApplicationController

  def create
    Pet.create(
      name: params[:name],
      type: params[:type],
      age: params[:age],
      description: params[:description],
      user_id: params[:user_id],
      profile_picture: params[:profile_picture]
    )
    @pets = Pet.all

    render json: @pets
  end

  def index
    @pets = Pet.all

    render json: @pets
  end

  def show
    @pet = Pet.find(params[:id])

    render json: @pet
  end
end

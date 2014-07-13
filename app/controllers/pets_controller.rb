class PetsController < ApplicationController
  # before_action :authenticate_user!, except: [:index, :show]

  def index
    @pets = Pet.order("RANDOM()").limit(1)
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.owner = current_owner

    if @pet.save
      flash[:notice] = 'Your pet profile was saved!'
      redirect_to pets_path
    else
      flash.now[:notice] = 'Your pet profile could not be saved.'
      render :new
    end
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])

    if @pet.update(pet_params)
      redirect_to pets_path
    else
      render :edit
    end
  end

  def destroy
    @pet = Pet.find(params[:id])

    if current_owner == @pet.owner
      @pet.destroy
      redirect_to pets_path
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :breed, :age,
      :color, :weight, :personality, :favorite_things, :owner_id, :profile_photo)
  end
end

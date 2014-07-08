class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    # @pet.user_id = current_user.id if current_user

    if @pet.save
      flash[:notice] = 'Your pet profile was saved!'
      redirect_to pets_path
    else
      flash.now[:notice] = 'Your pet profile could not be saved.'
      render :new
    end
  end

  # def edit

  # end

  def show
    @pet = Pet.find(params[:id])
  end

  # def update

  # end

  # def destroy
  #   @pet = Pet.find(params[:id])

  #   if current_user == @pet.user
  #     @pet.destroy
  #     redirect_to pets_path
  #   end
  # end

  private
  def pet_params
    params.require(:pet).permit(:name, :breed, :age,
      :color, :weight, :personality, :favorite_things, :owner_id, :profile_photo)
  end
end

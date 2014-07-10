class OwnersController < ApplicationController
  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)
    # @pet.user_id = current_user.id if current_user

    if @owner.save
      flash[:notice] = 'Your pet profile was saved!'
      redirect_to pets_path
    else
      flash.now[:notice] = 'Your pet profile could not be saved.'
      render :new
    end
  end

  def show
    @owner = Owner.find(params[:id])
  end

  def edit
    @owner = Owner.find(params[:id])
  end

  # def update

  # end

  # def destroy
  #
  # end

  private
  def owner_params
    params.require(:owner).permit(:email, :password_confirmation, :profile_photo)
  end
end

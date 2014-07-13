class OwnersController < ApplicationController
  def show
    @pet = Pet.find(params[:id])
  end

  def edit
    @owner = Owner.find(params[:id])
  end
end

class VotesController < ApplicationController
  def upvote
    @pet = Pet.find(params[:id])
    @pet.votes.create
    redirect_to(pets_path)
  end
end

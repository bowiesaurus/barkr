class FriendshipsController < ApplicationController
  def index
    @friendships = current_owner.friendships
  end

  def show
    @friendship = Friendship.find(params[:id])
  end

  def create
    @friend = Pet.find(params[:pet_id])
    @friendship = current_owner.friendships.build(friend: @friend)

    if @friendship.save
      flash[:notice] = "Added puppy pal."
      redirect_to root_url

    else
      flash[:error] = "Oops, we couldn't save that puppy pal."
      redirect_to root_url
    end
  end

  def destroy
    @friendship = current_owner.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Removed puppy pal."
    redirect_to friendships_path
  end
end

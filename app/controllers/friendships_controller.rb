class FriendshipsController < ApplicationController
  def index
    @friendships = Friendship.all
  end

  def show
    @friendship = Friendship.find(params[:id])
  end

  def create
    @friendship = current_owner.friendships.build(params[:friend_id])

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
    redirect_to root_url
  end
end

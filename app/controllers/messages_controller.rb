class MessagesController < ApplicationController
  def index
    @received_messages = Message.where(recipient: current_owner)
    @sent_messages = Message.where(sender: current_owner)
  end

  def show
    @messages = Message.all
  end

  def new
    @message = Message.new
    @friend = Friendship.find(params[:friendship_id])
  end

  def create
    friendship = Friendship.find(params[:friendship_id])
    pet = Pet.find(params[:pet_id])
    @message = Message.create(message_params)
    @message.sender = current_owner
    @message.recipient = pet.owner

    if @message.save
      flash[:notice] = 'Your message was sent!'
      redirect_to messages_path
    else
      flash.now[:notice] = 'Your message could not be sent.'
      render :new
    end
  end

  def destroy
    @message = current_owner.messages.find(params[:id])
    @message.destroy
    flash[:notice] = 'Message deleted.'
    redirect_to owner_messages_path
  end

  private

  def message_params
    params.require(:message).permit(:body, :title)
  end
end

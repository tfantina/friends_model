class FriendsController < ApplicationController
  before_action :set_friend, only: :destroy

  def index
    @friends = current_user.friends
  end
  def set_friend
    @friend = current_user.friends.find(params[:id])
  end

  def destroy
    current_user.remove_friend(@friend)
    head :no_content
  end
end

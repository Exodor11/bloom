class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def follow
    @follower = current_user
    @following = User.find(params[:user_id])
    @contact = Contact.create(following: @following, follower: @follower)
    redirect_to @following
  end

  def unfollow
    # @user.followers.find_by(id: current_user.id).present?

    @user = User.find(params[:user_id])
  
    current_user.following_contacts.where(following: @user).destroy_all
    redirect_to @user
    
    
    # @following = current_user
    # @follower = User.find(params[:user_id])
    # Contact.destroy.where()
    # @contact = Contact.create(following: @following, follower: @follower)
    # redirect_to @follower
  end
end

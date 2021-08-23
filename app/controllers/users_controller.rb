class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
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

  def followers
    @user = User.find(params[:user_id])
    @followers = @user.followers
  end

  def followings
    @user = User.find(params[:user_id])
    @followings = @user.followings
  end


  def ownposts
    @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  def savedposts
    @user = User.find(params[:user_id])
    @saved_posts = @user.saved_posts
    # @all_posts = Post.all
    # @saved_posts = []

    # @all_posts.each do |post|
    #   @saved_posts << post if post.post_saved.where(user: @user).present?
    # end
    return @saved_posts
    # @posts = Post.post_saved.where(user: @user)
  end

end

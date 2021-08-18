class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(id: params[:id])
  end

  def follow
    @following = current_user
    @followed = User.find(id: params[:id])
    @contact = Contact.create(following: @following, followed: @followed)
  end
end

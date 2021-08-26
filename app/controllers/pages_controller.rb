class PagesController < ApplicationController
  def home
  end

  def search
    @tags = Tag.all
    @users = User.all


    
    if user_signed_in?
      @user = current_user
      @user_tags = @user.tags.map { |tag| tag.name }

      @all_users = User.all
      @matching_users = []

      @all_users.each do |user|
        user.tags.each do |tag|
          @matching_users << user if @user_tags.include?(tag.name) && !@matching_users.include?(user) && user != current_user
        end
      end
      return @matching_users
    else
      redirect_to user_session_path
    end

  end
end

class PagesController < ApplicationController
  def home
  end

  def search
    @tags = Tag.all
    @users = User.all
  end
end

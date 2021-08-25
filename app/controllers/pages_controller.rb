class PagesController < ApplicationController
  def home
  end

  def search
    @tags = Tag.all
  end
end

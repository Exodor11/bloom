class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    @post.save!
    #redirect
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    #redirect
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    #redirect
  end

  def upvote
    @post = Post.find(params[:id])
    @user = current_user
    @upvote = PostUpvoted.new(post_id: @post, user: @user)
    @upvote.post = @post
    @upvote.user = @user
    @upvote.save!
    # redirect_to profile_path
  end

  def save
    @post = Post.find(params[:id])
    @user = current_user
    @saved = PostSaved.new(post_id: @post, user: @user)
    @saved.post = @post
    @saved.user = @user
    @saved.save!
    # redirect_to_profile_path
  end

  private

  def post_params
    params.require(:post).permit(:title)
  end
end

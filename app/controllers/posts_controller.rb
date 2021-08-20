class PostsController < ApplicationController

  def index
    if params[:query].present?
      sql_query = " \
        posts.title ILIKE :query \
        "
      @posts = Post.all.where(sql_query, query: "%#{params[:query]}%")
    else
      @posts = Post.all
    end
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
    @post = Post.find(params[:post_id])
    @user = current_user
    @upvote = PostUpvoted.new(post: @post, user: @user)
    # @upvote.post = @post
    # @upvote.user = @user
    @upvote.save!
    redirect_to @post
  end

  def unvote
    @post = Post.find(params[:post_id])
    @post.post_upvoted.where(user: current_user).destroy_all
    redirect_to @post
  end

  def save
    @post = Post.find(params[:post_id])
    @user = current_user
    @saved = PostSaved.new(post_id: params[:post_id], user: @user)
    @saved.post = @post
    @saved.user = @user
    @saved.save!
    redirect_to @post
  end

  def unsave
    @post = Post.find(params[:post_id])
    @post.post_saved.where(user: current_user).destroy_all
    redirect_to @post
  end

  private

  def post_params
    params.require(:post).permit(:title, :text, :category, tag_ids: [])
  end

        # OR tags.name ILIKE :query \
        # OR tags.category ILIKE :query \
        # OR users.first_name ILIKE :query \
        # OR users.last_name ILIKE :query \
end

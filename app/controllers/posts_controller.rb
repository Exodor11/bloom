class PostsController < ApplicationController

  def index
    if params[:query].present?
      sql_query = " \
        posts.title ILIKE :query \
        OR users.first_name ILIKE :query \
        OR tags.name ILIKE :query \
        "
      @posts = Post.joins(:user).joins(:post_tags).where("posts.id = post_tags.post_id").joins(:tags).where("tags.id = post_tags.tag_id").where(sql_query, query: "%#{params[:query]}%").distinct
      # @posts = Post.joins(:post_tags).where("posts.id = post_tags.post_id")
      # @posts = Post.joins(:tags).where("tags.id = post_tags.tag_id AND tags.name='#{params[:query]}'")
      # @posts = Post.all.where(sql_query, query: "%#{params[:query]}%")
      # @post = PostTag.joins(:post).where(sql_query, query: "%#{params[:query]}%")
      # @post_tags = PostTag.joins(:tag).where(sql_query, query: "%#{params[:query]}%")

      # @posts = Post.all.where(sql_query, query: "%#{params[:query]}%")
    else
      @posts = Post.all
    end
  end

  # Post.joins("JOIN post_tags ON posts.id = post_tags.post_id JOIN tags ON tags.id = post_tags.tag_id AND tags.name='entrepreneurship'")


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
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to @post
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
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

  def ownposts
    @user = User.find(params[:user_id])
    @posts = Post.where(user: @user)
  end

  def savedposts
    @user = User.find(params[:user_id])
    @all_posts = Post.all
    @saved_posts = []

    @all_posts.each do |post|
      @saved_posts << post if post.post_saved.where(user: @user).present?
    end
    return @saved_posts
    # @posts = Post.post_saved.where(user: @user)
  end

  def dailyinsights
    @user = current_user
    @user_tags = @user.tags
    @all_posts = Post.all
    @my_mix = []

    @all_posts.each do |post|
      @my_mix << post if post.tags.where(name: @user)
    end
    return @saved_posts
  end



  private

  def post_params
    params.require(:post).permit(:title, :text, :description, :category, :photo, tag_ids: [])
  end

        # OR tags.name ILIKE :query \
        # OR tags.category ILIKE :query \
        # OR users.first_name ILIKE :query \
        # OR users.last_name ILIKE :query \
end

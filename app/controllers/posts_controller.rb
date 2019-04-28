class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      # checks to see if this is true by running it, if it is, then redirect to @post
      redirect_to @post
    else
      # otherwise, re-render edit page
      render :edit
    end
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end

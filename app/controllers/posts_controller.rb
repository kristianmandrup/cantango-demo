class PostsController < ApplicationController
  respond_to :html

  expose(:posts) { Post.all }
  expose(:post)

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    post.save ? redirect_to(project, notice: 'Post was successfully created.') : render(action: "new")
  end

  def update
    update_attributes ? redirect_to(post, notice: 'Post was successfully updated.') : render(action: "edit")
  end

  def destroy
    post.destroy
    redirect_to posts_url
  end

  private

  def update_attributes
    post.update_attributes(params[:post])
  end
end


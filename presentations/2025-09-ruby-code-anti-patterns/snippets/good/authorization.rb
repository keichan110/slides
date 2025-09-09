class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: [:show, :edit, :update]

  def show; end
  def edit; end
  def update
    @post.update(post_params)
  end

  private
  def set_post
    @post = current_user.posts.find_by(id: params[:id])

    unless @post
      render json: { error: 'Post not found' },
             status: :not_found
      return
    end
  end
end

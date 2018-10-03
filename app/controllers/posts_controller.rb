class PostsController < ApplicationController
  before_action :authenticate_user!, except [:index, :show]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit

  end

  def create

  end

  def update

  end

  def destroy

  end

  private

  def post_params

  end
end

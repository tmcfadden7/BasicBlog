class CommentsController < ApplicationController
  before_action :authenticate_user!, except:[:index, :show]

  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to post_path
    else
      render 'edit'
    end
  end

  def update
    @comment = Comment.find(params[:id])

    if @comment.update_attributes(comment_params)
      redirect_to post_path
    else
      render 'edit'
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to post_path
  end

  def comment_params

  end

end

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
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    redirect_to post_path(@post)
  end

  def update
    @comment = Comment.find(params[:id])

    if @comment.update_attributes(comment_params)
      redirect_to post_path
    else
      render 'edit'
  end
end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
 end
  end

private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end

end

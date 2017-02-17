class CommentsController < ApplicationController

  def new
    @user = current_user
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new
  end

  def create
    @user = current_user
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new(comment_params)
    if @product.save
      redirect_to product_path(@product)
    else
      flash[:alert] = "Comment was not added, Please try again"
      render :new
    end
  end

  def upvote
    @comment = Comment.find(params[:id])
    @comment.upvote_by current_user
    redirect_to :back
  end

  def downvote
    @comment = Comment.find(params[:id])
    @comment.downvote_by current_user
    redirect_to :back
  end

  def edit
    @product = Product.find(params[:product_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @product = Product.find(params[:product_id])
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.delete
    redirect_to :back
  end

private
  def comment_params
    params.require(:comment).permit(:content, :user_id)
  end
end

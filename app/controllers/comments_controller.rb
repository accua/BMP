class CommentsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :find_commentable

  def new
    @user = current_user
    if params[:comment_id]
      @comment = Comment.find(params[:comment_id])
    elsif params[:build_id]
      @build = Build.find(params[:build_id])
    else
      @product = Product.find(params[:product_id])
    end
    @new_comment = Comment.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @user = current_user
    if params[:comment_id]
      @comment = Comment.find(params[:comment_id])
    end
    @new_comment = @commentable.comments.create(comment_params)
      if @commentable.save
        respond_to do |format|
          format.html { redirect_to :back, notice: "Your comment was successfully added." }
          format.js
        end
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
    params.require(:comment).permit(:content, :user_id, :commentable_type, :commentable_id)
  end

  def find_commentable
    @commentable = Comment.find(params[:comment_id]) if params[:comment_id]
    @commentable = Product.find(params[:product_id]) if params[:product_id]
    @commentable = Build.find(params[:build_id]) if params[:build_id]
  end
end

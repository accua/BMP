class BuildsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @builds = Build.all
  end

  def show
    @build = Build.friendly.find(params[:id])
    @total = @build.cost
    @categories = Category.all
  end

  def new
    @user = User.friendly.find(params[:user_id])
    @build = @user.builds.new
    @products = Product.all
  end

  def create
    @user = User.friendly.find(params[:user_id])
    @build = @user.builds.new(build_params)
    if @user.save
      redirect_to edit_user_build_path(@user.id, @build)
    else
      flash[:alert] = 'Build could not be created, please try again.'
      render :new
    end
  end

  def edit
    @categories = Category.all
    @user = User.friendly.find(params[:user_id])
    @build = Build.friendly.find(params[:id])
    @products = Product.all
  end

  def upvote
    @build = Build.find(params[:id])
    @build.upvote_by current_user
    respond_to do |format|
      format.html { redirect_to :back }
      format.js { render layout: false }
    end
  end

  def downvote
    @build = Build.friendly.find(params[:id])
    @build.downvote_by current_user
    respond_to do |format|
      format.html { redirect_to :back }
      format.js { render layout: false }
    end
  end

  def update
    if params['build']['product_ids']
      @user = User.friendly.find(params[:user_id])
      @build = Build.friendly.find(params[:id])
      @product = Product.friendly.find(params['build']['product_ids'].to_i)
      @build.products.push(@product)
    else
      @user = User.friendly.find(params[:user_id])
      @build = Build.friendly.find(params[:id])
      if @build.update(build_params)
        redirect_to user_build_path(@user, @build)
      else
        render :edit
      end
    end
  end

  def destroy
    @user = User.friendly.find(params[:user_id])
    @build = Build.friendly.find(params[:id])
    @build.delete
    redirect_to user_builds_path(@user)
  end

private

  def build_params
    params.require(:build).permit(:name, :description, :price, :user_id, :picture, :product_ids)
  end

end

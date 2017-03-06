class BuildsController < ApplicationController

  def index
    @build = Build.all
  end

  def show
    @build = Build.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @build = @user.builds.new
  end

  def create
    @user = User.find(params[:user_id])
    @build = @user.builds.new(build_params)
    if @user.save
      redirect_to user_builds_path(@build)
    else
      flash[:alert] = 'Build could not be created, please try again.'
      render :new
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @build = Build.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @build = Build.find(params[:id])
    if @build.update(build_params)
      redirect_to user_build_path(@user, @build)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @build = Build.find(params[:id])
    @build.delete
    redirect_to user_builds_path(@user)
  end

private

  def build_params
    params.require(:build).permit(:name, :description, :price, :user_id)
  end

end

class UsersController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def show
    @user = User.friendly.find(params[:id])
  end
end

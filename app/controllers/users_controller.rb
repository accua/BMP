class UsersController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def show
  end
end

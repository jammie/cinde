class UsersController < ApplicationController
  before_filter :require_user

  def index
    @users = User.all
  end
end

class UsersController < ApplicationController
  before_filter :require_user
  set_tab :user

  def index
    @users = User.all
  end
end

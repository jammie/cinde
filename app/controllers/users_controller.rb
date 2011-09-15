class UsersController < ApplicationController
  before_filter :require_user
  before_filter :load
  set_tab :user

  def load
    @users = User.paginate :page => params[:page], :order => 'updated_at ASC'
    @user = User.new
  end

  def index
  end

  def new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Successfully created User."
      load
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = "Successfully updated User."
      load
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      load
      flash[:notice] = "Successfully destroyed User."
    end
  end
end

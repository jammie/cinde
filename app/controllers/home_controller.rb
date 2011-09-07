class HomeController < ApplicationController
  before_filter :require_user
  set_tab :home

  def index
  end
end

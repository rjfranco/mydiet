class AdminController < ApplicationController
  before_filter :user_exists, :only => [:index]
  before_filter :authenticate_user!, :except => [:welcome]
  
  def index
  end

  def welcome
  end

  private
  def user_exists
    if User.all.empty?
      redirect_to welcome_path
    end
  end
end

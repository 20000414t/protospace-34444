class ApplicationController < ActionController::Base
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    User.create
  end

  private
  def user_params
    params.require(:user).parmit(:name, :text)
  end
  
end

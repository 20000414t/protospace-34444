class UserController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @users = User.new
  end

  def create
    User.create(user_paarams)
end

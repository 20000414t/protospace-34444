class UsersController < ApplicationController
  def show
    @name = current_user.name
    @prototype = current_user.prototypes
    user = User.find(params[:id])
    @prototypes = user.prototypes
  end
 
end

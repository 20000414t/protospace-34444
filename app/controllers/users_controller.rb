class UsersController < ApplicationController
 
  def show
    #@name = current_user.name
    #@prototype = current_user.prototypes
    user = User.find(params[:id])
    @prototypes = user.prototypes
    @namae = user.name
    @profile = user.profile
    @occupation = user.occupation
    @position = user.position
  end
 
end

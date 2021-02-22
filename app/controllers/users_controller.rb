class UsersController < ApplicationController
  def show
    @name = current_user.name
    @prototype = current_user.prototypes
    @prototypes = Prototype.all
  end
  private
  def prototype_params
   params.require(:prototype).permit( :filed, :catch_copy, :consept, :image).merge(user_id: current_user.id, )
  end

end

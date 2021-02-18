class PrototypesController < ApplicationController

  def index
  end
 
  
  def new
    @prototype = Prototype.new
  end
  def create
    Prototype.create(prototype_params)
    @prototype = Prototype.new(prototype_params)
    if @prototype.save
      redirect_to root_path
    else
     render :new
    end
  end
  private
  def prototype_params
   params.require(:prototype).permit( :filed, :catch_copy, :consept,:image).merge( params[:user_id])
  end
end

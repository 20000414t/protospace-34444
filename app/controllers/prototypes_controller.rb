class PrototypesController < ApplicationController

  def index
  end
 
  
  def new
    @prototype = Prototype.new
  end
  def create
    Prototype.create(prototype_params)
    @prototype = Rrotype.new(prototype_params)
    if @prototype.save
      redirect_to root_path
    else
     render :new
    end
  end
  private
  def prototype_params
    params.require(:prototype).permit(:name, :image, :text)
  end
end

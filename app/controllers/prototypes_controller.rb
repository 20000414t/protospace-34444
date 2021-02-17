class PrototypesController < ApplicationController

  def index
  end
 
  
  def new
    
  end
  def create
    Prototype.create(prototype_params)
  end
  private
  def prototype_params
    params.require(:prototype).permit(:name, :image, :text)
  end
end

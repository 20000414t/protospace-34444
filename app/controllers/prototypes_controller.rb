class PrototypesController < ApplicationController

  def index
    @prototypes = Prototype.all
  end

 

  def show
    @prototype = Prototype.find(params[:id])
  end

  def edit
    @prototype = Prototype.find(params[:id])
  end

  def update
    prototype = Prototype.find(params[:id])
    prototype.update(prototype_params)
  end
  
  def destroy
    prototype = Prototype.find(params[:id])
    prototype.destroy
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
   params.require(:prototype).permit( :filed, :catch_copy, :consept, :image).merge(user_id: current_user.id)
  end
end

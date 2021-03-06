class PrototypesController < ApplicationController
  before_action :set_prototype, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]
  before_action :usertigattara, only: [:edit, :destroy]
  def index
    @prototypes = Prototype.all
  end

 

  def show
    @prototype = Prototype.find(params[:id])
    @comment = Comment.new
    @comments = @prototype.comments.includes(:user)
  end

  def edit
  end

  def update
    prototype = Prototype.find(params[:id])
    prototype.update(prototype_params)
    
    if prototype.update(prototype_params)
      redirect_to  prototype_path
    else
      render :edit
    end
  end
  
  def destroy
    prototype = Prototype.find(params[:id])
    prototype.destroy

    if prototype.destroy
      redirect_to  root_path
    end
  end
  
  def new
    @prototype = Prototype.new
  end
  def create
    @prototype = Prototype.new(prototype_params)
    
    if @prototype.save
      redirect_to root_path
    else
     render :new
    end
  end
  
  private
  def prototype_params
   params.require(:prototype).permit( :filed, :catch_copy, :consept, :image).merge(user_id: current_user.id, )
  end

  def set_prototype
    
    @prototype = Prototype.find(params[:id])
    
  end


  def move_to_index
    unless user_signed_in?
      redirect_to user_session_path
    end
  end

  def usertigattara
    unless current_user == @prototype.user
      redirect_to action: :index
    end
  end
end

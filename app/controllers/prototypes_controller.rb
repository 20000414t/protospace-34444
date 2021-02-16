class PrototypesController < ApplicationController

  def index
  end
  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end
  
  def new
    @prototype = Prototype.new
  end
  def create
  end

end

class TravelsController < ApplicationController
  before_action :require_login
  
  def index
    @travels = current_user.travels
  end

  def show
    @travel = Travel.find(params[:id])
  end

  def new
    @travel = Travel.new
  end

  def create
    @travels = current_user.travels.build(params_travel)
   
    if @travel.save
      redirect_to @travel 
    else
      render :new
    end
  end

  def edit    
    @travel = Travel.find(params[:id])
  end

  def update
    @travel = Travel.find(params[:id])
    
    if @travel.update(params_travel)
      redirect_to @travel
    else
      render :edit
    end
  end

  def destroy
    @travel = Travel.find(params[:id])
    @travel.delete
    @travel.save

    redirect_to travels_path
  end

  helper_method :current_user

  private
  
  def params_travel
    params.require(:travel).permit(:title, :description)
  end
end
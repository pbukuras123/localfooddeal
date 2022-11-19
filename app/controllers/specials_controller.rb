class SpecialsController < ApplicationController
  before_action :set_special, only: [:show, :edit, :update, :destroy]
  before_action :set_time, only: [:index]
  

  def show
  end
  
  def index
    @specials = Special.all
  end

  def new 
    @special = Special.new
  end

  def edit
  end

  def update
    if @special.update(special_params)
        flash[:notice] = "Special was updated successfully!"
        redirect_to specials_path
    else 
        render 'edit'
    end
  end

  def create 
      @special = Special.new(special_params)
      if @special.save
        flash[:notice] = "Special was created successfully!"
        redirect_to specials_path
      else 
        render 'new'
      end
  end

  def destroy
    @special.destroy
    redirect_to specials_path
  end

  private

  def set_special
    @special = Special.find(params[:id])
  end

  def special_params
    params.require(:special).permit( :restaurantName, :title, :dayOfWeek,
      :town, :state, :zip)
  end

  def set_time
    @time = Time.zone.now
  end


end

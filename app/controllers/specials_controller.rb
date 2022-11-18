class SpecialsController < ApplicationController
  def index
    @specials = Special.all
  end

  def new 
    @special = Special.new
  end

  def edit
    @special = Special.find(params[:id])
  end

  def update
    @special = Special.find(params[:id])
    if @special.update(params.require(:special).permit( :restaurantName, :title, :dayOfWeek,
      :town, :state, :zip))
        flash[:notice] = "Special was updated successfully!"
        redirect_to specials_path
    else 
        render 'edit'
    end
  end

  def show
    @special = Special.find(params[:id])
  end

  def create 
    @special = Special.new(params.require(:special).permit( :restaurantName, :title, :dayOfWeek,
      :town, :state, :zip))
      if @special.save
        flash[:notice] = "Special was created successfully!"
        redirect_to specials_path
      else 
        render 'new'
      end
  end

  def destroy
    @special = Special.find(params[:id])
    @special.destroy
    redirect_to specials_path
  end


end

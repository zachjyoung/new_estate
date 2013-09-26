class BuildingsController < ApplicationController

  def new 
    @building = Building.new
  end

  def create
    @building = Building.new(params[:repository])

    if @building.save
      redirect_to new_building_path, notice: 'You have created a new building.'
    else
      render :new
    end
  end
end

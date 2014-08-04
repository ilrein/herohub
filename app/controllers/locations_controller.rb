class LocationsController < ApplicationController
  def index
    @locations = Location.where(current_user.company)
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.create(location_params)    

    if @location.save
      redirect_to root_url
    else
      redirect_to locations_index_path
    end
  end

  def update
  end

  def destroy
  end

  def show
  end
  private
  def location_params
    params.require(:location).permit(:address)
  end

end

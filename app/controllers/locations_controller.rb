class LocationsController < ApplicationController
  def index
    @locations = Location.where(current_user.company)
  end

  def create
  end

  def update
  end

  def destroy
  end

  def show
  end
end

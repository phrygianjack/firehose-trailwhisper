class PhotosController < ApplicationController
  before_action :authenticate_user!
  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(photo_params.merge(user: current_user))
    redirect_to place_path(@place)
  end

  def destroy
    @place = Place.find(params[:place_id])
    @photo = @place.photos.find(params[:id])
    @photo.destroy
    redirect_to :back, notice: "Your Photo Was Deleted"
  end

  private

  def photo_params
    params.require(:photo).permit(:caption, :picture)
  end
end
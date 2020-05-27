class PhotosController < ApplicationController

  def index
    @photo = Photo.all
  end
  
  def new
    @photo = Photo.new
  end

  def create
    Photo.create(photo_params)
  end

  def update
  end

  private
  def photo_params
    params.require(:photo).permit(:image, :text)
  end
  
end

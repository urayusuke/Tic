class PhotosController < ApplicationController

  def index
  end
  
  def new
    @photo = Photo.new
  end

  def create
    Photo.create(photo_params)
    redirect_to root_path
  end

  def update
  end

  private
  def photo_params
    params.require(:photo).permit(:image, :user)
  end

  def tag_params
    params.require(:tag).permit(:text)
  end

end

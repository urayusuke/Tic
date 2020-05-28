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

  def show
    @photo = Photo.find(params[:id])
  end

  def search
    @photos = Photo.search(params[:keyword])
    respond_to do |format|
      format.html
      format.html
    end
  end

  private
  def photo_params
    params.require(:photo).permit(:image, :text).merge(user_id: current_user.id)
  end
  
end

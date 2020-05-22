class PhotosController < ApplicationController

  def index
    # @user = User.find(params[:id])

  end
  
  def create
    @user = User.new(params[:id])
  end

  def update
    @user = User.new(params[:id])
  end

end

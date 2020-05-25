class TagsController < ApplicationController
  
  def new
    @tag = Tag.new
    @photo = Photo.new
  end
  
  def create
    Photo.create
    Tag.create(tag_params)
  end

  private
  def tag_params
    params.require(:tag).permit(:text)
  end
  
end

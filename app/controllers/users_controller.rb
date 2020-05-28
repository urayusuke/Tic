class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @photo = @user.photos
  end

end

class PhotosController < ApplicationController
  def new
  end

  def create
    @photo = Photo.new(params[:photo])

    @photo.save 
    redirect_to @photo
  end

  def show
    @photo = Photo.find(params[:id])
  end
  private
    def photo_params
      params.require(:photo).permit(:title, :author, :url)
    end


end

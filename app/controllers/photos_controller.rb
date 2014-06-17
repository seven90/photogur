class PhotosController < ApplicationController
  def new
  end

  def create
    @photo = Photo.new(photo_params)

    @photo.save 
    redirect_to @photo
  end

  def show
    @photos = Photo.all
  end

  def index
    @photos = Photo.all
  end

  private
    def photo_params
      params.require(:photo).permit(:title, :author, :url)
    end
end

class WelcomeController < ApplicationController
  def index
    @photos = Photo.all
  end
end

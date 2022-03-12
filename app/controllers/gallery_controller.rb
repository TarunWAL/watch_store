class GalleryController < ApplicationController
  def index
    @products=Store.all
  end

  def search
  end
end

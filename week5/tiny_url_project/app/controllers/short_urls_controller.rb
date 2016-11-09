class ShortUrlsController < ApplicationController
  before_action :set_short_url, only: [:show, :destroy, :edit, :update]
  def index
    @all_urls = ShortUrl.all
  end
  def new
    @short_url = ShortUrl.new
  end
  def create
    p params
    p short_url_params
    @short_url = ShortUrl.create(short_url_params[:url])
    @short_url.save
    redirect_to @short_url
  end
  def show
  end
  def update
    @short_url
  end
  def destroy
    @short_url.destroy
  end
  private
  def set_short_url
    @short_url = ShortUrl.find(params[:id])
  end
  def params

  end
end

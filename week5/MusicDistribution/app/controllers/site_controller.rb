class SiteController < ApplicationController
  def search
    # @result = [Artist, Album, Label].map do |model|
      # model.where("name LIKE ?", "%#{params[:term]}%")
    # end.flatten
    artists = Artist.search(params[:term])
    labels = Label.search(params[:term])
    albums = Album.search(params[:term])

    @result = artists + albums + labels
  end
end

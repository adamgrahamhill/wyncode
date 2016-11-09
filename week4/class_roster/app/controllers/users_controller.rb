class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
    @selected_user = User.find(params[:id])
  end
end

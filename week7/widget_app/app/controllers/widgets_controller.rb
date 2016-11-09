class WidgetsController < ApplicationController
	before_action :authorize
  def index
  	@widgets = Widget.all
  end

  def show
  	@widget = Widget.find(session[:user_id])
  end
end

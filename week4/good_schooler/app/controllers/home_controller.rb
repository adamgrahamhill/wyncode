class HomeController < ApplicationController
  layout "my_little_layout", except: [:show]
  def index
    session[:logged_in] = true
    @da_time = Time.now
    @best_codeschool = CodeSchool.first.name
    @codeschools = CodeSchool.all
    # redirect_to @codeschools.first
    #what are you?
    #oh a user?
    #let me ty user_url and pass in your id
    #user_url returns the string
    # the string is passed as the final redirect_to argument
  end

def logout
  session[:logged_in] = false
end
  def index2
    @codeschools = CodeSchool.all
    # render 'jerreh'
    render json: {moshe: "0in10"}
  end
  def show
    render 'users/whateverisgood'
  end
  def post
    if session[:logged_in]
      render json: session
    else
      render plain: "not logged"
    end
  end
end

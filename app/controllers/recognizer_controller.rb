class RecognizerController < ApplicationController

  MAX_COUNTER = 3

  def index
  end

  def search
    session[:counter] = 0 if session[:counter].nil? || session[:counter] >= MAX_COUNTER
    session[:counter] += 1

    # Use model to check if database is operative
    @pattern = DuckPattern.find_by url: params[:image]

    # render plain: session[:counter].inspect
  end

  def found?
    session[:counter] != MAX_COUNTER
  end

  helper_method :found?

end

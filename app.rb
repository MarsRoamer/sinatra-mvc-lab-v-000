require_relative 'config/environment'

class App < Sinatra::Base

  get "/"  do
    erb :user_input
  end

  post "/" do
    @latin = PigLatinizer.new(params[:string])
    erb :piglatin
  end


end

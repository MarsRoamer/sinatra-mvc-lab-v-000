require_relative 'config/environment'

class App < Sinatra::Base

  get "/"  do
    erb :user_input
  end

  post "/" do
    @test = PigLatinizer.new(params[:string])

    erb :piglatin
  end


end

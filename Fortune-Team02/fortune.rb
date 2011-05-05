require 'sinatra/base'
require 'haml'
require 'thin'

class Fortune < Sinatra::Base
  get '/fortune/random/?' do
    @fortune = $fortunes[rand($fortunes.size)]
    haml :fortune
  end
end

require 'fortunedata'

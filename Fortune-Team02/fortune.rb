require 'sinatra/base'
require 'haml'
require 'thin'

class Fortune < Sinatra::Base
  get '/fortune/random/?' do
    @fortune = $fortunes[rand($fortunes.size)]
    haml :fortune
  end

  get '/fortune/get/:fid' do
    fid = params[:fid].to_i
    if fid < 0 || fid > $fortunes.size
      @fortune = nil
    else
      @fortune = $fortunes[fid]
    end
    haml :fortune
  end
end

require 'fortunedata'

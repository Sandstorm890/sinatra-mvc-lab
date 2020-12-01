require_relative 'config/environment'
require_relative 'models/pig_latinizer'
require "pry"

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        # binding.pry
        @latinized_word = PigLatinizer.new.piglatinize(params[:user_phrase])
        erb :pig_latinize
    end

end
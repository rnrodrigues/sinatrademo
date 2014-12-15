require 'sinatra/base'

module MyApi
    class App < Sinatra::Base
        get '/hello' do
            "Hi"
        end
        
        get '/' do
            # Excuse me! I don't want to think.
            send_file File.join('public', 'index.html')
        end
        
        get '/api/v1/pong' do
            "Pong!"
        end
    end
end
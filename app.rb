require 'sinatra/base'

class App < Sinatra::Base

    get '/newteam' do
        erb :newteam
    end

    post '/newteam' do
        @team_name = params[:name]
        @coach = params[:coach]
        @point = params[:pg]
        @shooting = params[:sg]
        @sf = params[:sf]
        @pf = params[:pf]
        @center = params[:c]

        erb :team
    end
end

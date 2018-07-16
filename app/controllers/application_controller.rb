require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/team' do
      @team = Team.new(params[:team])

      params[:team][:heroes].each do |hero_data|
        SuperHero.new(hero_data)
      end 

      @heros = SuperHero.all
        

    erb :/team
    end
  end

require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/team' do
      @super_hero = SuperHero.new(params[:super_hero])

      @team = Team.

    erb :/team
    end
  end

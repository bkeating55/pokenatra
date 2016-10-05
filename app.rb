require "sinatra"
require "sinatra/reloader"
require "active_record"
require "pry"
require "pg"


require_relative "db/connection"
require_relative "models/pokemon"

get '/pokemons' do
 @pokemons = Pokemon.all
 erb :"pokemons/index"
end

#

puts "end of application"

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :database => "pokemons_db"
)

if defined? Sinatra
	after do
	  ActiveRecord::Base.connection.close
	end
end

$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"

  # names can be found with nds[array index][:name]
  # worldwide_gross can be found with nds[array index][:movies][array index][:worldwide_gross]
  result          = {}
  movie_gross_sum = 0
  director_index  = 0

  while director_index < nds.length
    movie_index   = 0
    director_name = nds[director_index][:name] # stores directors name in a variable

    while movie_index < nds[director_index][:movies].length
      movie_gross_sum += nds[director_index][:movies][movie_index][:worldwide_gross] # stores worldwide_gross in a variable
      movie_index     += 1

    end
    result[director_name] = movie_gross_sum # Adds directors name and movie_gross to hash

    director_index += 1
    movie_gross_sum = 0 # resets the sum for next iteration

  end

  p result
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
end

directors_totals(directors_database)

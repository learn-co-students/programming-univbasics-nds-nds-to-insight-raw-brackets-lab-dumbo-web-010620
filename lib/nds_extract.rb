$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  row_index = 0
  d_totals = {}
  while row_index < nds.count
    d_key = nds[row_index][:name]
    d_totals[d_key] = 0 
    movie_index = 0
    while movie_index < nds[row_index][:movies].length do
      movie = nds[row_index][:movies][movie_index]
      d_totals[d_key] += movie[:worldwide_gross]
      
    movie_index += 1  
    end

     
  row_index += 1
  end
  return d_totals
end

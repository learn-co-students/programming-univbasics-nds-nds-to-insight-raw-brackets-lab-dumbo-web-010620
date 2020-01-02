$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
pp nds
result = {};
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # Be sure to return the result at the end!
num_of_directors = nds.length

num_of_directors.times do |director_index|
  director_name = nds[director_index][:name];
  num_of_movies = nds[director_index][:movies].length
  total_gross = 0;

num_of_movies.times do |index|
  total_gross += nds[director_index][:movies][index][:worldwide_gross]
end

result[director_name] = total_gross
  end
  result
end

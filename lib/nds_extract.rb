$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

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
  
  
  d_hash = {}
  row_index = 0 
  while row_index < directors_database.length do
    column_index = 0
    total_gross = 0
    
    d_name = directors_database[row_index][:name]
    d_hash[d_name]
    
    while column_index < directors_database[row_index][:movies].length do
      total_gross += directors_database[row_index][:movies][column_index][:worldwide_gross]
      column_index += 1
      
    end  
    d_hash[d_name] = total_gross
    row_index += 1
    
  end
  
  return d_hash
  
  
end

pp directors_database

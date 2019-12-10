$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
require 'pry'
#AoHoAoH
#nds[int][:key][int][:key]


def directors_totals(nds)
  out_index = 0
  result = {}
  while out_index < nds.length do
    next_index = 0
    gross_total = 0
    while next_index < nds[out_index][:movies].length do #this loop adds the dir grosses
      dir_name = nds[out_index][:name]
      gross_total += nds[out_index][:movies][next_index][:worldwide_gross]
       next_index += 1
      binding.pry
    end
    result[dir_name] = gross_total
    out_index += 1
  end
  result
end

#dir_gross += nds[out_index][:movies][next_index][:worldwide_gross]
#I think I'm in the wrong database
#this will jump to the next index 
      #create a new hash that has the dir_name pointing to worldwide_gross
      #how to create a new hash and key/value pair

#need help pushing my iteration into a hash
  # nds[2][:name] = {nds[2][:name]  => nds[2][:movies][0][:worldwide_gross]} - this will return a hash=> #{"James Cameron"=>760507625}
  #nds[out_index][:name] ---this will access the name
  #nds[out_index][:movies][inn_index][:worldwide_gross] -- worldwide_gross
  #the out_index access new director hash
  #the :movies key unlocks an array containing movie release details 
  #the inn_index accesses the array in :movies which should iterate for each movies worldwide_gross 
  # out_index = 0 
  # total = 0
  # while out_index < nds.length do
  #   movie_index = 0
  #   while movie_index < nds[out_index].length do
  #     inner_details = nds[out_index][movie_index]
  #     inner_index = 0
  #     while inner_index < inner_details do
  #       total += nds[out_index][:movies][inner_index][:worldwide_gross]
  #     end 
  #     movie_index += 1
  #   end
  #   out_index += 1
  #   result = {}
 
  
  
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!


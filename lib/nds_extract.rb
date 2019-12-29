$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# require 'pry'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #

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
  # nil
  #
  # worldwide_totals = 0
  result = {
    # key: "value"
    # "Stephen Spielberg": 5
  }
  start = 0

  while start < nds.length do
      total = 0
      movie_count = 0
      while movies < nds[start][:movies].length
        total += nds[start][:movies][movie_count][:worldwide_gross]
        movie_count += 1
      end
      result[nds[start][:name]] = total
      start = start + 1

      # #### OR #### #
      # while start < nds.length do
      #     total = 0
      #     movie_count = 0
      # nds[start][:movies].each do |movie|
      #   total += movie[:worldwide_gross]
      # end
      # result[nds[start][:name]] = total
      # start = start + 1
  end
  result
end

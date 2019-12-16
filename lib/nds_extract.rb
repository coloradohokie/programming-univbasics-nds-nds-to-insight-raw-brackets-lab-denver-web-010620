$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  
  #data structure is AoHoAoH
  
  

  director_count = 0 #list of directors; first Array
  movie_count = 0 #list of each movies for each director; second array
  gross = 0

  while director_count < nds[director_count].length do
    director = nds[director_count][:name]
    
    while movie_count < nds[director_count][:movies][movie_count].length do
      gross += nds[director_count][:movies][movie_count][:worldwide_gross]
      movie_count += 1
    end
    result[:director] = gross
    director_count += 1
  end
  
  pp result
  #result = {}
  return result
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  #nil
end


pp directors_database
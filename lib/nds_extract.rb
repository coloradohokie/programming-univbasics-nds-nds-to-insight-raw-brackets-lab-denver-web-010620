$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #result = {}
  #
  # Be sure to return the result at the end!
  #nil
  
  
  #data structure is AoHoAoH
  
  
  result = {}
  director_count = 0 #list of directors; first Array
  while director_count < nds.length do
    director = nds[director_count][:name]
    gross = 0    
    movie_count = 0 #list of each movies for each director; second array
    while movie_count < nds[director_count][:movies].length do
      gross += nds[director_count][:movies][movie_count][:worldwide_gross]
      movie_count += 1
    end
    result[director] = gross
    puts director_count
    director_count += 1
  end
#  puts result
  return result
end

#directors_totals(directors_database)

#pp directors_database
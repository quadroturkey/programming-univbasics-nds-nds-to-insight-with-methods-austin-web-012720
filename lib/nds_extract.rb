$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  pp director_data
  

end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  results = {}
  

return results
end


  director_index = 0 
  while director_index < nds.length do
    director_name = nds[director_index][:name]
    movie_index = 0
    movie_gross = 0 
    while movie_index < nds[director_index][:movies].length do
      movie_gross += nds[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    result[director_name] = movie_gross
    director_index += 1
  end
  return result
end
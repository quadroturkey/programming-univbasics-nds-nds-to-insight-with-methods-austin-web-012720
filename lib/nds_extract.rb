$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movie_index = 0 
  movie_len = director_data.length
  gross = 0 
  while movie_index < movie_len do
    gross += director_data[:worldwide_gross]
    movie_index += 1 
  end
  return gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
results = {}
director_index = 0
while director_index < nds.length 
  director_name = nds[director_index][:name]
  results[director_name] = gross_for_director(nds[director_index])
  director_index += 1 
end
return results
end




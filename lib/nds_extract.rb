$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def director_total(director_data, column_index)

end


def gross_for_director(director_data)
  column_index = 0
  pp director_data
  grand_total = 0;
  while column_index < director_data[:movies].length do
    grand_total += director_data[:movies][column_index][:worldwide_gross]
    column_index += 1
  end
  return grand_total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  row_index = 0
   while row_index < nds.length do
     column_index = 0
     grand_total = 0
     while column_index < nds[row_index][:movies].length do
       grand_total += gross_for_director(nds)
       column_index += 1
     end
     key = nds[row_index][:name]
     result[key] = grand_total
     row_index += 1
   end
   puts result
   result
end

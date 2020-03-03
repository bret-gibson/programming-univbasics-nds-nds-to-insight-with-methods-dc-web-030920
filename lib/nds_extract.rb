$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  row_index = 0
  print_string = ""
  while row_index < directors_database.length do
    if row_index == 0
      column_index = 0
      while column_index < directors_database[row_index][:movies].length do
        puts directors_database[row_index][:movies][column_index][:title]
        column_index += 1
      end
    end
    row_index += 1
  end
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

       grand_total += nds[row_index][:movies][column_index][:worldwide_gross]
       column_index += 1
     end
     key = nds[row_index][:name]
     result[key] = grand_total
     row_index += 1
   end
   puts result
   result
end

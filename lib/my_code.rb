def map(array)
  i = 0 
  result = []
  while i < array.length do
    result << yield(array[i])
    i += 1
  end
result
end

def reduce(array, starting_point = nil)
 
  if starting_point
    i = 0
    accumulator = starting_point
  else 
    i = 1
    accumulator = array[0]
    
  end
  while i < array.length do
    accumulator = yield(accumulator, array[i])
    i += 1
  end
 accumulator
end
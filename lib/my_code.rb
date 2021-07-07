def map(array)
  i = 0
  new_array = []
  
  while i < array.length do
    new_array << yield(array[i])
    i += 1
  end
  new_array
end


def reduce(source_array, starting_point = nil)
  if starting_point
    reduction = starting_point
    i = 0
  else
    reduction = source_array[0]
    i = 1
  end
  
  while i < source_array.length do
   reduction = yield(reduction, source_array[i])
   i += 1
  end
  return reduction
end

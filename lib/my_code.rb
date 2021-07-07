my_array = [1, 2, 3, 4]

def map(source_array)
  new = []
  i = 0
  while source_array.length > i do
    new.push(yield(source_array[i]))
    i += 1
  end
  new
end

def reduce(source_array, starting_point = nil)
  if starting_point
    i = 0
    result = starting_point
  else
    result = source_array[0]
    i = 1
  end
    while source_array.length > i do
    result = yield(result, source_array[i])
    i += 1
  end
  result
end

# Your Code Here
def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
      new.push(yield(source_array[i]))
    i += 1
  end
  return new
end

def reduce(source_array, accumulator = 0)
  source_array.each do |n|
    accumulator = yield(accumulator, n)
  end
  if accumulator == 0
    return true
  else
    return accumulator
  end
end

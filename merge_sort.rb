def merge_sort(arr)
  return arr if arr.length < 2

  left = merge_sort(arr[0..((arr.length / 2) - 1)])
  right = merge_sort(arr[(arr.length / 2)..(arr.length - 1)])

  merged = []
  (left.size + right.size).times do
    if left.empty?
      (merged << right).flatten!
      break
    elsif right.empty?
      (merged << left).flatten!
      break
    else
      left[0] < right[0] ? merged << left.shift : merged << right.shift
    end
  end
  merged
end

arr = []
20.times do
  arr << rand(200)
end
p arr
p merge_sort(arr)
def bubble_sort(arr)
  if arr.empty? || arr.length == 1
    return arr
  end
  l = 0
  r = arr.length - 1
  arr = arr.dup
  loop do
    no_swap = true
    while l < r
      if arr[l] > arr[l+1]
        temp = arr[l]
        arr[l] = arr[l+1]
        arr[l+1] = temp
        no_swap = false
      end
      l += 1
    end
    r -= 1
    l = 0
    break if r == 0 || no_swap
  end
  arr
end

arr = [4,3,78,2,0,2]
p bubble_sort(arr)

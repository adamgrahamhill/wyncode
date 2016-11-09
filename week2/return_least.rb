# @channel write a method that takes an array of numbers like `[99, 1, -99, 50, 234]` and returns (not outputs)  the smallest number

arr = [99, 1, -99, 50, 234]

def smallest_num(arr)
  smallest_known = 0 # starts off at index 0
  vs = 1             # compares to index 1
  while vs < (arr.length + 1) do
    if arr[vs] == nil
      return arr[smallest_known]
    elsif arr[smallest_known] <= arr[vs]
      vs += 1
    else
      smallest_known = vs
      vs += 1
    end
  end
end
p smallest_num(arr)

arr2 = [ 23, 88, -101, 44, 323, 50000, -121, 12]
p smallest_num(arr2)

# Your Code Here
def map(arr)
  ans = []
  count = 0
  while count < arr.length
    ans.push(yield(arr[count]))
    count += 1
  end
  return ans
end
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

def reduce(arr, block=nil)
  ans=0
  count = 0
  
  if block != nil
    ans = block
    count += 1
  end
  
  while count < arr.length 
    ans = yield(ans, arr[count])
    count += 1
  end
  
  return ans
end
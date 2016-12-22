# 1. Implement merge sort. What's the bigO and why?



# Merge Sort

# The goal of this method is to split the input (array) into two.
# The splitting happens repeatedly via recursion until the array length is equal to 1, the base case.
# Each of these arrays coming from the split are plugged into the merge method where all the sorting happens.
# Once the base case is reached, the array, which is now sorted, is returned.
# This is an example of the "Divide and Conquer" method.


# [4,1,2,3]

# return array if array.length == 1
  # meaning it will be then be passed into the merge method with its pair that has reached an array length of 1 too)
  # ex: merge(merge_sort[1], merge_sort[2])
    #this if finally qualified to go through the merge method!
 


def merge_sort(array)
  return array if array.length == 1 #until the list is broken down enough, only then can all the pending merge(left) and merge(right) sort the entire array                             
                                   
    midpoint = array.length / 2
    left = array.slice(0, midpoint - 1)
    right = array.slice(midpoint, array.length)
    merge(merge_sort(left), merge_sort(right))
end



def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    if left.first < right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted.concat(left).concat(right)
end

#
# merge(merge_sort[4,1], merge_sort[2,3])
# merge((merge_sort[4], merge_sort[1]), (merge_sort[2], merge_sort[3]))
#         \_______________________/        \_______________________/

# base case reached. Plug each pair of arrays each with a size of 1 into merge #52:14

# merge(merge([4],[1]),merge([2],[3]))
# merge(merge([1,4]),merge([2,3]))
# merge(merge([1,2,3,4]))

# Final Output: [1,2,3,4]


# Process:

# merge([4],[1]) => sorted = [1,4]
#                                   ======>  merge('sorted'[1,4],'sorted'[2,3]) ======> 
# merge([2],[3]) => sorted = [2,3]

#                                                                                                 sorted = [1]
#                                                                                                     [4] [2,3]

#                                                                                                 sorted = [1,2]
#                                                                                                     [4] [3]
#                                                                                                 sorted = [1,2,3]
#                                                                                                     [4] []

#                                                                                                 sorted = [1,2,3].concat([4]).concat([]) = [1,2,3,4]

#                                                                                                 Final output = [1,2,3,4]



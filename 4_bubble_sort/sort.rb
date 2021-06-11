def bubble_sort(nums)
  for n in 0..nums.size - 2
    for index in 0..nums.size - (n + 2) # ignore the last n elements after n iterations
      if nums[index] > nums[index + 1]
        nums[index], nums[index + 1] = nums[index + 1], nums[index] # swap elements
      end
    end
  end
  nums
end
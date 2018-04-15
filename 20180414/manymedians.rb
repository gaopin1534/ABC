N = gets.chomp.to_i
nums = gets.chomp.split(' ').map(&:to_i)
sorted = nums.sort
a = sorted.clone
pre_del = a.pop
pre_med = a[(a.count + 1)/2 - 1]
pre_med_index = (a.count + 1)/2 - 1
for i in 1..N do
  a = sorted.clone
  delete = nums[i - 1]

  if delete == pre_med
    if pre_del == pre_med
      puts pre_med
      pre_del = delete
      next
    end

    if pre_del < pre_med
      puts a[pre_med_index - 1]
      pre_med = a[pre_med_index - 1]
      pre_med_index -= 1
      pre_del = delete
      next
    end

    if pre_del > pre_med
      puts a[pre_med_index + 1]
      pre_med = a[pre_med_index + 1]
      pre_med_index += 1
      pre_del = delete
      next
    end
  end

  if delete > pre_med
    if pre_del >= pre_med
      puts pre_med
      pre_del = delete
      next
    end

    if pre_del < pre_med
      puts a[pre_med_index - 1]
      pre_med = a[pre_med_index - 1]
      pre_med_index -= 1
      pre_del = delete
      next
    end
  end

  if delete < pre_med
    if pre_del <= pre_med
      puts pre_med
      pre_del = delete
      next
    end

    if pre_del > pre_med
      puts a[pre_med_index + 1]
      pre_med = a[pre_med_index + 1]
      pre_med_index += 1
      pre_del = delete
      next
    end
  end
end

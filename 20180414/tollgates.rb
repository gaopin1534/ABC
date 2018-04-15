arr = gets.chomp.split(' ').map(&:to_i)
b = gets.chomp.split(' ').map(&:to_i)
lower = []
higher =[]
for i in b do
  if i > arr[0]
    break
  end
  if i > arr[2]
    higher.push i
  elsif i < arr[2]
    lower.push i
  end
end

puts [higher.count, lower.count].min

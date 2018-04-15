N = gets.chomp.to_i
a = []
for i in 1..N do
  str = gets.chomp
  a.push str
end
b = []
M = gets.chomp.to_i

for i in 1..M do
  str = gets.chomp
  b.push str
end

best = 0

for str in a do
  price = a.count(str) - b.count(str)
  best = price if price > best
end

puts best

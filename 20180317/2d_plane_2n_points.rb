class Point
  def initialize(arr)
    @first = arr[0]
    @second = arr[1]
    @used = false
  end

  attr_accessor :first,:second,:used
end

N = gets.chomp.to_i
a = []
for i in 1..N do
  arr = gets.chomp.split(' ').map(&:to_i)
  a.push Point.new(arr)
end

b = []
for i in 1..N do
  arr = gets.chomp.split(' ').map(&:to_i)
  b.push Point.new(arr)
end

a.sort! do |hoge, huga|
  "#{huga.first.to_s}#{huga.second.to_s}" <=> "#{hoge.first.to_s}#{hoge.second.to_s}"
end

b.sort! do |hoge, huga|
  "#{hoge.second.to_s}#{hoge.first.to_s}" <=> "#{huga.second.to_s}#{huga.first.to_s}"
end
count = 0
b.each_with_index do |aval, aindex|
  a.each_with_index do |bval, bindex|
    next unless bval.first > aval.first
    next unless bval.second > aval.second
    next if aval.used || bval.used
    count += 1
    aval.used = true
    bval.used = true
    break
  end
end

puts count

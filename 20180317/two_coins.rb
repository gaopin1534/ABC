a,b,c = gets.chomp.split(' ').map{|n| n.to_i}
if (a + b) >= c
  puts "Yes"
else
  puts "No"
end

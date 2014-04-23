# 1
a = (1..100).to_a
p a

# 2
b = a.collect{|i| i * 100}
# b = a.collect!{|i| i * 100}
p b

# 3
c = a.reject{|i| i % 3 != 0}
# c = a.select{|i| i % 3 == 0}
p c

# 4
p a.reverse
p a.sort
p a.sort_by{|i| -i}

# 5
sum = 0
a.each do |i|
  sum += i
end
p sum

p a.inject(0){|memo, i| memo += i}

def prime?(num)
  return false if 2 > num
  # 2.upto(num - 1) do |i|
  2.upto(Math.sqrt(num)) do |i|
    if num % i == 0
      return false
    end
  end
  return true
end



100.times{
  num = rand(50)
  printf "%3d: %s\n", num, prime?(num).to_s
}



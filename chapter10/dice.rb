def dice
  return rand(6) + 1
end

10.times{
  p dice()
}

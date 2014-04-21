sum = 0

outcome = {"参加費" => 1000, "ストラップ代" => 1000, "懇親会費" => 4000}
outcome.each{|pair|
  sum += pair[1]
}

print "合計: ", sum, "\n"

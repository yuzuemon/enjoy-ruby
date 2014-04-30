t0 = Time.now
open("ken_all_roma.csv").each{|line|
  line.chomp!
  line.split(",")
}

p Time.now - t0

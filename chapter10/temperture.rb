def cels2fahr(cels)
  return cels.to_f * 9 / 5 + 32
end

def fahr2cels(fahr)
  return (fahr.to_f - 32 ) * 5 / 9
end

100.times{|i|
  fahr = cels2fahr(i+1)
  printf "摂氏: %3d ℃, 華氏: %3d F\n", i+1, fahr
}

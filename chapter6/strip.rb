file = open(ARGV[0])
while text = file.gets
  next if /^\s*$/ =~ text # 空白行
  next if /^#/ =~ text
  print text
end

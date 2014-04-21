ltotal = 0
wtotal = 0
ctotal = 0

ARGV.each{|file|
  begin
    input =  open(file)
    l = 0
    w = 0
    c = 0

    while line = input.gets
      l += 1
      c += line.size
      line.sub!(/^\s+/, "") # 行頭の空白を削除
      ary = line.split(/s+/).size
      w += ary.size
    end

    input.close

    printf("%8d %8d %8d %s\n", l, w, c, file)
    ltotal += l
    wtotal += w
    ctotal += c

  rescue => ex
    print ex.message, "\n"
  end
}

printf("%8d %8d %8d %s\n", ltotal, wtotal, ctotal, "total")

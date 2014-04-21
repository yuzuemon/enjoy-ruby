l = ["Perl", "Python", "Ruby", "Scheme"]


print "breakの例:\n"
i = 0

l.each{|lang|
  i += 1
  if i == 3
    break
  end
  p [i, lang]
}

print "\nnextの例:\n"
i = 0

l.each{|lang|
  i += 1
  if i == 3
    next
  end
  p [i, lang]
}

print "\nredoの例:\n"
i = 0

l.each{|lang|
  i += 1
  if i == 3
    redo
  end
  p [i, lang]
}

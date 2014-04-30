HTMLRegexp = /(<!--.*?--\s*)|
  (<(?:[^"'>]*|"[^"]*"|'[^']*')+>)|
  ([^<]*)/xm

data = DATA.read # __END__ 以降の部分は DATA から読むことができる

data.scan(HTMLRegexp) do |match|
  comment, tag, tdata = match[0..2]
  if comment
    p [ "Comment", comment ]
  elsif tag
    p [ "Tag", tag ]
  elsif tdata
    tdata.gsub!(/\s+/, " ")
    tdata.sub!(/ $/, "")
    p [ "TextData", tdata ] unless tdata.empty?

  end
end

__END__
<!DOCUTYPE HTML>
<html>
  <body>
    <a name="foo" href="foo" attr >foo</a>
    <a name="bar" href="bar" attr >bar</a>
    <a name="baz" href="baz" attr >baz</a>
    <!--
      <a href="dummy">dummy</a>
    -->
  </body>
</html>

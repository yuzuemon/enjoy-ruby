require './htmlscanner.rb'

data = DATA.read # __END__ 以降の部分を DATA から読むことができる

HTML.scan(data) do |item|
  case item
  when HTML::Comment # コメント
    p [ item.type, item.value ]
  when HTML::MarkUpDecl # マークアップ宣言
    p [ item.type, item.value ]
  when HTML::StartTag # 開始タグ
    p [ item.type, item.name, item.attribute ]
  when HTML::EndTag # 終了タグ
    p [ item.type, item.name ]
  when HTML::TextData # テキストデータ
    tdata = item.value
    tdata.gsub!(/\s+/, " ") # 空白を纏める
    tdata.sub!(/ $/, "") # 末尾の空白を削除する
    p [ item.type, tdata ] unless tdata.empty?  # 空でなければ出力する
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

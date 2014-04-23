require "open-uri"

options = {
  "Accept-Langage" => "ja, en;q=0.5",
}
# HTTP経由でデータを読み込む
open("http://www.ruby-lang.org", options){|io|
  puts io.read
}

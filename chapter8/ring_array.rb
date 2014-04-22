class RingArray < Array # スーパークラスの指定
  def [](i)
    idx = i % size
    super(idx) # スーパークラスの同名メソッド( Array#[] )呼び出し
  end
end

eto = RingArray["子", "丑", "寅"]
p eto[6]
p eto[11]
p eto[-1]

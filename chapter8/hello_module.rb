module HelloModule             # module文
  Version = "1.0"              # 定数の定義

  def hello(name)              # メソッドの定義
  print "Hello, ", name, ".\n"
  end

  module_function :hello       # hello をモジュール関数として公開する

end

p HelloModule::Version
HelloModule.hello("Alice")

include HelloModule
p Version
hello("Alice")

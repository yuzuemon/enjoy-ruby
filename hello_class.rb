class HelloWorld                # class文
  def initialize(myname="Ruby") # initializeメソッド
    @name = myname              # インスタンス変数の初期化
  end

  def hello                     # インスタンスメソッド
    print "Hello, world. I am ", @name, ".\n"
  end

  def name         # @name を参照する
    return @name
  end

  def name=(value) # @name を変更する
    @name = vaule
  end
end

bob   = HelloWorld.new("Bob")
alice = HelloWorld.new("Alice")
ruby  = HelloWorld.new

bob.hello

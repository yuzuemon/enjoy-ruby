class HelloCount
  @@count = 0 # @@: クラス変数, helloメソッドの呼び出し回数

  def self.count
    @@count
  end

  def initialize(myname="Ruby")
    @name = myname
  end

  def hello
    @@count += 1
    print "Hello, world. I am ", @name, ".\n"
  end
end

bob   = HelloCount.new("Bob")
alice = HelloCount.new("alice")
ruby  = HelloCount.new

p HelloCount.count
bob.hello
alice.hello
ruby.hello
p HelloCount.count


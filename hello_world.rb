# a)
class HelloWorld
  def HelloWorld.hello(name)
    print name, " said Hello.\n" # nameはローカル変数
  end
end
HelloWorld.hello("John") # => John said hello.


# b)
class << HelloWorld
  def hello(name)
    print name, " said Hello.\n" # nameはローカル変数
  end
end
HelloWorld.hello("John") # => John said hello.

# c)
class HelloWorld
  def self.hello(name)
    print name, " said Hello.\n" # nameはローカル変数
  end
end
HelloWorld.hello("John") # => John said hello.

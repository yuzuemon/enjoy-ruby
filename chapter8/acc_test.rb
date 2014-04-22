class AccTest

  def pub
    puts "pub is a public method."
  end
  public :pub # pubメソッドをpublicに設定(defaultでpublicの為不要)


  def priv
    puts "priv is a private method."
  end
  private :priv # privメソッドをprivateに設定

end

acc = AccTest.new
acc.pub  # pub is a public method.
acc.priv # error

class HelloWorld
  def self.hello(someone = nil)
    name = someone || 'World'
    "Hello, #{ name }!"
  end
end

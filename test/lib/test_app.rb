class TestApp
  def self.call(env)
    [200, {}, "meow!"]
  end
end
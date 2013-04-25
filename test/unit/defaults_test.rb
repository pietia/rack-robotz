require File.expand_path(File.join(File.dirname(__FILE__), '..', 'test_helper'))

class DefaultsTest < MiniTest::Unit::TestCase
  include Rack::Test::Methods

  def setup
    ENV.delete 'DISABLE_ROBOTS'
  end

  def app
    Rack::Robotz.new TestApp
  end

  def test_it_should_use_default_content
    ENV['DISABLE_ROBOTS'] = 'true'
    get "/robots.txt"
    assert_equal last_response.status, 200
    assert_equal last_response.body, "User-Agent: *\nDisallow: /"
  end

end
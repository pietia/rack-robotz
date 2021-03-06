require File.expand_path(File.join(File.dirname(__FILE__), '..', 'test_helper'))

class MiddlewareTest < MiniTest::Unit::TestCase
  include Rack::Test::Methods

  def app
    Rack::Robotz.new TestApp, "User-Agent" => "*", "Disallow" => "/"
  end

  def setup
    ENV.delete 'DISABLE_ROBOTS'
  end

  def test_should_generate_robots_txt_when_env_variable_set
    # we used to take that ENV variable into account
    ENV['DISABLE_ROBOTS'] = 'true'
    get "/robots.txt"
    assert_equal last_response.status, 200
    assert_equal last_response.body, "User-Agent: *\nDisallow: /"
  end

  def test_should_generate_robots_txt_when_env_variable_not_set
    get "/robots.txt"
    assert_equal last_response.status, 200
    assert_equal last_response.body, "User-Agent: *\nDisallow: /"
  end

  def test_should_not_affect_other_urls
    get "/"
    assert_equal last_response.status, 200
    assert_equal last_response.body, 'meow!'
  end

end
module Rack

  class Robotz

    VERSION = '0.0.4'

    def initialize(app, items = {"User-Agent" => "*", "Disallow" => "/"})
      @app = app
      @items = items
    end

    def to_s
      @items.map { |key, value| "#{key}: #{value}" }.join("\n")
    end

    def call(env)
      if env['PATH_INFO'] == '/robots.txt'
        [200, { 'Content-Type' => 'text/plain' }, [to_s]]
      else
        @app.call(env)
      end
    end

  end

end
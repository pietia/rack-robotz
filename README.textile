# rack-robotz

[![Build Status](https://travis-ci.org/pietia/rack-robotz.png?branch=master)](https://travis-ci.org/pietia/rack-robotz)

[![Code Climate](https://codeclimate.com/github/pietia/rack-robotz.png)](https://codeclimate.com/github/pietia/rack-robotz)

* Rack application to serve a robots.txt file dynamically.
* set `DISABLE_ROBOTS=true` to enable middleware
* sample usage: `use Rack::Robotz, "User-Agent" => "*", "Disallow" => "/"`

# rack-robotz

Rack middleware to serve a robots.txt file dynamically. Handy in staging envs.

[![Build Status](https://travis-ci.org/pietia/rack-robotz.png?branch=master)](https://travis-ci.org/pietia/rack-robotz)

[![Code Climate](https://codeclimate.com/github/pietia/rack-robotz.png)](https://codeclimate.com/github/pietia/rack-robotz)

### How to use it?

* set ENV variable: `DISABLE_ROBOTS=true`
* add middleware to your application: `use Rack::Robotz, "User-Agent" => "*", "Disallow" => "/"`

require 'test_helper'

class PathTest < Geminabox::TestCase
  url "http://localhost/foo"

  app do
    map "/foo" do
      run Geminabox::Server
    end
  end

  should_push_gem
end

class PathWithTrailingSlashTest < Geminabox::TestCase
  url "http://localhost/foo/"

  app do
    map "/foo" do
      run Geminabox::Server
    end
  end

  should_push_gem
end

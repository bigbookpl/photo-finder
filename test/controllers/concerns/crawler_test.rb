require 'test_helper'

class CrawlerTest < ActiveSupport::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.
  def teardown
  end

  test "get_sub_directories should return list of subdirectories" do
    crawler = Crawler.new
    result = crawler.get_sub_directories("./test/fixtures")
    assert_equal ["./test/fixtures/",
                  "./test/fixtures/sample1/",
                  "./test/fixtures/sample1/sample11/",
                  "./test/fixtures/sample2/"], result
  end

end
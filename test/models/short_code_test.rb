require "test_helper"

class LinkTest < ActiveSupport::TestCase
  test "encode 0" do
    assert_equal "0", ShortCode.encode(0)
    end




  test "decode '1'" do
    assert_equal 1, ShortCode.decode("1")
  end

  test "decode 'gw'" do
    assert_equal 1024, ShortCode.decode("gw")
    end

  test "decode '10'" do
    assert_equal 62, ShortCode.decode("10")
  end

  test "decode '4c91'" do
    assert_equal 999_999, ShortCode.decode("4c91")
  end
end

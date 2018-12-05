require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/openmic'

class OpenMicTest < Minitest::Test
  def test_it_exists
    open_mic = OpenMic.new
    assert_instance_of OpenMic, open_mic
  end
end

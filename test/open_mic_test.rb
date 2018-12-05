require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/open_mic'

class OpenMicTest < Minitest::Test
  def test_it_exists
    open_mic = OpenMic.new({location: "Comedy Works"})
    assert_instance_of OpenMic, open_mic
  end

  def test_it_has_a_location
    open_mic = OpenMic.new({location: "Comedy Works"})
    assert_equal "Comedy Works", open_mic.location
  end
end

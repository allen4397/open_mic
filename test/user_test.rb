require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/user'

class UserTest < Minitest::Test
  def test_it_exists
    user = User.new("Sal")
    assert_instance_of User, user
  end

  def test_it_has_a_name
    user = User.new("Sal")
    assert_equal "Sal", user.name
  end

  def test_it_can_store_jokes
    user = User.new("Sal")
    assert_equal [], user.jokes
  end
end

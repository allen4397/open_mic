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

  def test_it_can_learn_jokes
    user = User.new("Sal")
    assert_equal [], user.jokes
    joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    user.learn(joke)
    assert_equal [joke], user.jokes
  end

  def test_it_can_tell_jokes
    sal = User.new("Sal")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    ali = User.new("Ali")
    sal.tell(ali, joke_1)
    assert_equal joke_1, ali.jokes[0]
  end

  def test_jokes_can_be_accessed_by_id
    sal = User.new("Sal")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    ali = User.new("Ali")
    sal.tell(ali, joke_1)
    sal.tell(ali, joke_2)
    assert_equal joke_1, ali.joke_by_id(1)
  end
end

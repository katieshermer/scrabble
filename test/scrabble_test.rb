gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_hello
    assert_equal 8, Scrabble.new.score("hello")
  end

  def test_it_can_score_an_empty_string
    binding.pry
    assert_equal 0, Scrabble.new.score("")
  end

  def test_it_can_score_nil
    assert_equal 0, Scrabble.new.score(nil)
  end

  def test_it_can_score_a_crazy_word
    assert_equal 56, Scrabble.new.score("supercalifragilisticexpialidocious")
  end

  def test_it_can_score_a_regular_word
    assert_equal 8, Scrabble.new.score("regular")
  end
end

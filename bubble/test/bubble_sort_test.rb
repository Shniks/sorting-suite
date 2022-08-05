require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative '../lib/bubble_sort'

class BubbleSortTest < Minitest::Test

  def test_if_it_exists
    sorter = BubbleSort.new

    assert_instance_of BubbleSort, sorter
  end

  def test_if_it_can_bubble_sort_an_array_of_4_elements
    sorter = BubbleSort.new

    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

  def test_if_it_can_bubble_sort_an_array_of_8_numbers
    sorter = BubbleSort.new
    input = [23, 34, 12, 74, 2, 19, 11, 14]
    result = [2, 11, 12, 14, 19, 23, 34, 74]

    assert_equal result, sorter.sort(input)
  end

  def test_if_it_can_bubble_sort_an_array_of_10_elements
    sorter = BubbleSort.new
    input = ["f", "b", "z", "d", "k", "p", "g", "n", "e", "x"]
    result = ["b", "d", "e", "f", "g", "k", "n", "p", "x", "z"]

    assert_equal result, sorter.sort(input)
  end

end

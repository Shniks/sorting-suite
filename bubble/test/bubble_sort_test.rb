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

  def test_if_it_can_bubble_sort_an_array_of_5_elements
    sorter = BubbleSort.new

    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

end

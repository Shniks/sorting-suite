require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative '../lib/insertion_sort'

class InsertionSortTest < Minitest::Test

  def test_if_it_exists
    sorter = InsertionSort.new

    assert_instance_of InsertionSort, sorter
  end

  def test_if_it_can_insertion_sort_an_array_of_4_elements
    sorter = InsertionSort.new

    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

  def test_if_it_can_insertion_sort_an_array_of_8_numbers
    sorter = BubbleSort.new
    unsorted = [23, 34, 12, 74, 2, 19, 11, 14]
    result = [2, 11, 12, 14, 19, 23, 34, 74]

    assert_equal result, sorter.sort(unsorted)
  end

end

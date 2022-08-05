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
    sorter = InsertionSort.new
    unsorted = [23, 34, 12, 74, 2, 19, 11, 14]
    result = [2, 11, 12, 14, 19, 23, 34, 74]

    assert_equal result, sorter.sort(unsorted)
  end

  def test_if_it_can_insertion_sort_an_array_of_10_elements
    sorter = InsertionSort.new
    unsorted = ["f", "b", "z", "d", "k", "p", "g", "n", "e", "x"]
    result = ["b", "d", "e", "f", "g", "k", "n", "p", "x", "z"]

    assert_equal result, sorter.sort(unsorted)
  end

  def test_if_it_can_insertion_sort_an_array_of_15_numbers
    sorter = InsertionSort.new
    unsorted = [48, 58, 37, 31, 52, 99, 19, 1, 22, 32, 74, 37, 30, 43, 5]
    result = [1, 5, 19, 22, 30, 31, 32, 37, 37, 43, 48, 52, 58, 74, 99]

    assert_equal result, sorter.sort(unsorted)
  end

end

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

end

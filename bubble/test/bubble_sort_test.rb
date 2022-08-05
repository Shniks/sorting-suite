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

end

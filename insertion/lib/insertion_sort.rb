class InsertionSort

  attr_reader :sorted

  def initialize
    @sorted = []
  end

  def sort(unsorted)
    until unsorted.empty?
      iteration(unsorted)
    end
    sorted
  end

  def iteration(unsorted)
    if sorted.empty?
      sorted_empty(unsorted)
    else
      sorted_not_empty(unsorted)
    end
    pull_element_from_unsorted(unsorted)
  end

  def sorted_empty(unsorted)
    sorted << unsorted.first
  end

  def sorted_not_empty(unsorted)
    first = unsorted.first # First element in unsorted array
    insert(first)
  end

  def insert(first)
    sorted.each_with_index do |value, index|
      if value > first
        sorted.insert(index, first)
        break
      elsif index + 1 == sorted.length
        sorted.push(first)
        break
      end
    end
  end

  def pull_element_from_unsorted(unsorted)
    unsorted.shift
  end

end

class BubbleSort

  def sort(unsorted)
    unsorted.length.times do |s = 0|
      iteration(unsorted)
    end
    unsorted
  end

  def iteration(unsorted)
    (unsorted.length - 1).times do |i = 0|
      swap(unsorted, i)
    end
  end

  def swap(unsorted, i)
    if unsorted[i+1] < unsorted[i]
      unsorted[i], unsorted[i+1] = unsorted[i+1], unsorted[i]
    end
  end

end

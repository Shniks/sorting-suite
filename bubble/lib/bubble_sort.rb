class BubbleSort

  def sort(input)
    input.length.times do |s = 0|
      iteration(input)
    end
    input
  end

  def iteration(input)
    (input.length - 1).times do |i = 0|
      swap(input, i)
    end
  end

  def swap(input, i)
    if input[i+1] < input[i]
      input[i], input[i+1] = input[i+1], input[i]
    end
  end

end

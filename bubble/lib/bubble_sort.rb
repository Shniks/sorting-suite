require 'pry'

class BubbleSort

  def sort(input)
    i = 0
    s = 0
    total = input.length - 1
    while s < input.length
      s = s + 1
      total.times do |i|
        previous = input[i]
        current = input[i+1]
        if current < previous
          input[i] = current
          input[i+1] = previous
        else
        end
        i = i + 1
      end
    end
    input 
  end

end

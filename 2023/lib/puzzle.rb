# frozen_string_literal: true

# Advent of Code puzzle
class Puzzle
  class << self
    def part1(input)
       input.inject(0) do |sum, item|
         first, *_ignored, last = item.scan(/\d/)
         number = (last.nil? ? first << first : first << last).to_i
         sum + number
       end
    end

    def part2(_input)
      nil
    end
  end
end

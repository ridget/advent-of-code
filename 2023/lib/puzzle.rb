# frozen_string_literal: true
# Advent of Code puzzle
class Puzzle
  class << self
    NUM_MAP = {
      "one" => 1,
      "two" => 2,
      "three" => 3,
      "four" => 4,
      "five" => 5,
      "six" => 6,
      "seven" => 7,
      "eight" => 8,
      "nine" => 9,
    }

    def part1(input)
      input.inject(0) do |sum, item|
        first, *_ignored, last = item.scan(/\d/)
        number = (last.nil? ? first << first : first << last).to_i
        sum + number
      end
    end

    def part2(input)
      re = /(?=(#{Regexp.union(NUM_MAP.keys)}))/
        new_inputs = input.map { |str| str.gsub(re) { NUM_MAP.values_at(*Regexp.last_match.captures.flatten).join } }
      part1(new_inputs)
    end
  end
end

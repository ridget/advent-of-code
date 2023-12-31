# frozen_string_literal: true

require 'puzzle'

RSpec.describe Puzzle do
  context 'with provided examples' do
    let(:provided_input) do
      %w(
        three656
        qjnbpfrztwo1
        xpxpbsdc1
        three2six8two5
        five121zvjks3
      )
    end

    describe '.part1' do
      let(:expected_answer) { 126 }

      it 'returns the correct result' do
        expect(described_class.part1(provided_input)).to eq(expected_answer)
      end
    end

    describe '.part2' do
      let(:provided_input) do
        %w(
          two1nine
          eightwothree
          abcone2threexyz
          xtwone3four
          4nineeightseven2
          zoneight234
          7pqrstsixteen
        )
      end

      let(:expected_answer) { 281 }

      it 'returns the correct result' do
        expect(described_class.part2(provided_input)).to eq(expected_answer)
      end
    end
  end
end
